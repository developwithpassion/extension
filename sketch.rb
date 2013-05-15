module Extension
  def self.!(obj, mod)
    obj.extend mod unless obj.is_a? mod
  end

  def extension(mod)
    Extension.! self, mod
  end
end

class Thing
end

module OtherThing
end

thing = Thing.new

Extension.! thing, OtherThing


class Thing
  include Extension

  def something
    extension OtherThing
  end
end
