import spasm.bindings;
import spasm.dom;
import spasm.types;

extern (C) export void _start()
{
  auto promise = window.fetch(RequestInfo("https://reqres.in/api/users/2"));
  promise.then(r => r.json).then((data){
      console.log(data);
      console.log(data.as!(Json).data.avatar.as!string);
    });
}
