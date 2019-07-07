import spasm.bindings;
import spasm.dom;
import spasm.types;

nothrow:
@safe:

extern (C) export void _start()
{
  auto requestInfo = RequestInfo("https://reqres.in/api/users/2");
  auto promise = window.fetch(requestInfo);
  promise.then(r => r.json).then((data){
      console.log(data);
      console.log(data.as!(Json).data.avatar.as!string);
    });
}
