module spasm.bindings.webappsec;

import spasm.types;
@safe:
nothrow:

enum ReferrerPolicy {
  none,
  no_referrer,
  no_referrer_when_downgrade,
  same_origin,
  origin,
  strict_origin,
  origin_when_cross_origin,
  strict_origin_when_cross_origin,
  unsafe_url
}


