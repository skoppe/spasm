module game.chain;

import std.meta : allSatisfy, staticMap;
import std.traits : CommonType, isCallable, isFloatingPoint, isIntegral,
  isPointer, isSomeFunction, isStaticArray, Unqual, isInstanceOf;
import std.range.primitives;

auto chain(Ranges...)(Ranges rs)
if (Ranges.length > 0 &&
    allSatisfy!(isInputRange, staticMap!(Unqual, Ranges)) &&
    !is(CommonType!(staticMap!(ElementType, staticMap!(Unqual, Ranges))) == void))
{
    static if (Ranges.length == 1)
    {
        return rs[0];
    }
    else
    {
        static struct Result
        {
        private:
            alias R = staticMap!(Unqual, Ranges);
            alias RvalueElementType = CommonType!(staticMap!(.ElementType, R));
            private template sameET(A)
            {
                enum sameET = is(.ElementType!A == RvalueElementType);
            }

            enum bool allSameType = allSatisfy!(sameET, R);

            // This doesn't work yet
            static if (allSameType)
            {
                alias ElementType = ref RvalueElementType;
            }
            else
            {
                alias ElementType = RvalueElementType;
            }
            static if (allSameType && allSatisfy!(hasLvalueElements, R))
            {
                static ref RvalueElementType fixRef(ref RvalueElementType val)
                {
                    return val;
                }
            }
            else
            {
                static RvalueElementType fixRef(RvalueElementType val)
                {
                    return val;
                }
            }

            // This is the entire state
            R source;
            // TODO: use a vtable (or more) instead of linear iteration

        public:
            this(R input)
            {
                foreach (i, v; input)
                {
                    source[i] = v;
                }
            }

            import std.meta : anySatisfy;

            static if (anySatisfy!(isInfinite, R))
            {
                // Propagate infiniteness.
                enum bool empty = false;
            }
            else
            {
                @property bool empty()
                {
                    foreach (i, Unused; R)
                    {
                        if (!source[i].empty) return false;
                    }
                    return true;
                }
            }

            void popFront()
            {
                foreach (i, Unused; R)
                {
                    if (source[i].empty) continue;
                    source[i].popFront();
                    return;
                }
            }

            @property auto ref front()
            {
                foreach (i, Unused; R)
                {
                    if (source[i].empty) continue;
                    return fixRef(source[i].front);
                }
                assert(false);
            }

            static if (allSameType && allSatisfy!(hasAssignableElements, R))
            {
                // @@@BUG@@@
                //@property void front(T)(T v) if (is(T : RvalueElementType))

                @property void front(RvalueElementType v)
                {
                    foreach (i, Unused; R)
                    {
                        if (source[i].empty) continue;
                        source[i].front = v;
                        return;
                    }
                    assert(false);
                }
            }

            static if (allSatisfy!(hasMobileElements, R))
            {
                RvalueElementType moveFront()
                {
                    foreach (i, Unused; R)
                    {
                        if (source[i].empty) continue;
                        return source[i].moveFront();
                    }
                    assert(false);
                }
            }

            static if (allSatisfy!(isBidirectionalRange, R))
            {
                @property auto ref back()
                {
                    foreach_reverse (i, Unused; R)
                    {
                        if (source[i].empty) continue;
                        return fixRef(source[i].back);
                    }
                    assert(false);
                }

                void popBack()
                {
                    foreach_reverse (i, Unused; R)
                    {
                        if (source[i].empty) continue;
                        source[i].popBack();
                        return;
                    }
                }

                static if (allSatisfy!(hasMobileElements, R))
                {
                    RvalueElementType moveBack()
                    {
                        foreach_reverse (i, Unused; R)
                        {
                            if (source[i].empty) continue;
                            return source[i].moveBack();
                        }
                        assert(false);
                    }
                }

                static if (allSameType && allSatisfy!(hasAssignableElements, R))
                {
                    @property void back(RvalueElementType v)
                    {
                        foreach_reverse (i, Unused; R)
                        {
                            if (source[i].empty) continue;
                            source[i].back = v;
                            return;
                        }
                        assert(false);
                    }
                }
            }

            static if (allSatisfy!(hasLength, R))
            {
                @property size_t length()
                {
                    size_t result;
                    foreach (i, Unused; R)
                    {
                        result += source[i].length;
                    }
                    return result;
                }

                alias opDollar = length;
            }

            static if (allSatisfy!(isRandomAccessRange, R))
            {
                auto ref opIndex(size_t index)
                {
                    foreach (i, Range; R)
                    {
                        static if (isInfinite!(Range))
                        {
                            return source[i][index];
                        }
                        else
                        {
                            immutable length = source[i].length;
                            if (index < length) return fixRef(source[i][index]);
                            index -= length;
                        }
                    }
                    assert(false);
                }

                static if (allSatisfy!(hasMobileElements, R))
                {
                    RvalueElementType moveAt(size_t index)
                    {
                        foreach (i, Range; R)
                        {
                            static if (isInfinite!(Range))
                            {
                                return source[i].moveAt(index);
                            }
                            else
                            {
                                immutable length = source[i].length;
                                if (index < length) return source[i].moveAt(index);
                                index -= length;
                            }
                        }
                        assert(false);
                    }
                }

                static if (allSameType && allSatisfy!(hasAssignableElements, R))
                    void opIndexAssign(ElementType v, size_t index)
                    {
                        foreach (i, Range; R)
                        {
                            static if (isInfinite!(Range))
                            {
                                source[i][index] = v;
                            }
                            else
                            {
                                immutable length = source[i].length;
                                if (index < length)
                                {
                                    source[i][index] = v;
                                    return;
                                }
                                index -= length;
                            }
                        }
                        assert(false);
                    }
            }

            static if (allSatisfy!(hasLength, R) && allSatisfy!(hasSlicing, R))
                auto opSlice(size_t begin, size_t end) return scope
                {
                    auto result = this;
                    foreach (i, Unused; R)
                    {
                        immutable len = result.source[i].length;
                        if (len < begin)
                        {
                            result.source[i] = result.source[i]
                                [len .. len];
                            begin -= len;
                        }
                        else
                        {
                            result.source[i] = result.source[i]
                                [begin .. len];
                            break;
                        }
                    }
                    auto cut = length;
                    cut = cut <= end ? 0 : cut - end;
                    foreach_reverse (i, Unused; R)
                    {
                        immutable len = result.source[i].length;
                        if (cut > len)
                        {
                            result.source[i] = result.source[i]
                                [0 .. 0];
                            cut -= len;
                        }
                        else
                        {
                            result.source[i] = result.source[i]
                                [0 .. len - cut];
                            break;
                        }
                    }
                    return result;
                }
        }
        return Result(rs);
    }
}
