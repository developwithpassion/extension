# extension


## Status

**Unreleased**

NOTE: Dependencies are linked locally in the development environment via the [`path_gem` library](https://github.com/Sans/path-gem). Dependencies aren't installed by RubyGems, and some dependencies aren't yet published.

## Usage

Include Extension and use the extension method to extend an instance with a module

```ruby
module SomeModule

end

class SomeThing
  include Extension

end


obj = SomeThing.new
obj.extension SomeModule

Alternatively, you can use the Extension.! class method on a object:

class SomeOtherThing

end

obj = SomeOtherThing.new
Extension.! obj, SomeModule
```

## License

extension is released under the [MIT License](http://www.opensource.org/licenses/MIT).