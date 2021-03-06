require_relative '../proofs_init'

title 'Extending an object'

module ExtendingAnObjectProofs
  class Example
    include Extension
  end

  module ExampleModule
  end

  module Builders
    extend self

    def example
      Example.new
    end

    def example_module
      ExampleModule
    end
  end
end

def build
  ExtendingAnObjectProofs::Builders
end

heading 'Extending an object with a module' do
  example = build.example
  
  result = example.extension build.example_module

  proof do
    desc 'Returns the extended object'
    result.prove { eql?(example) }

    desc 'Object is extended by the module'
    result.prove { is_a? build.example_module }
  end
end

heading 'Extending an object with a module that it already has' do
  proof do
    example = build.example

    example.extension build.example_module

    result = example.extension build.example_module

    desc 'Returns the object without rextending it'
    result.prove { eql?(example) }
  end
end

heading 'Extending an object using the Extension class method' do
  example = build.example
  
  result = Extension.! example, build.example_module

  proof do
    desc 'Returns the extended object'
    result.prove { eql?(example) }

    desc 'Object is extended by the module'
    result.prove { is_a? build.example_module }
  end
end
