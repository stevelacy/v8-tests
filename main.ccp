#include <node.h>
#include <iostream>
#include <string>
#include <array>

using v8::Isolate;

int main() {
  v8::Isolate *isolate = v8::Isolate::GetCurrent();
  v8::HandleScope handle_scope(isolate);
  v8::Handle global<v8::ObjectTemplate> = v8::ObjectTemplate::New(isolate);
  global->Set(v8::String::NewFromUtf8(isolate, "print"), v8::FunctionTemplate::New(isolate, Print));
  v8::Handle<v8::Context> context =  v8::Context::New(isolate, NULL, global);
  context->Enter();

  v8::Handle<v8::Source> = v8::String::NewFromUtf8(context->GetIsolate(), "print(42);");
  v8::Handle<v8::Name> = v8::String::NewFromUtf8(context->GetIsolate(), "(shell)");
  v8::Handle<v8::Script> script = v8::Script::Compile(source, name);
  v8::Handle<Value> result = script->Run();
  v8::String::Utf8Value str(result);
  const char* cstr = ToCString(str);
  printf("%s\n", cstr);

}
