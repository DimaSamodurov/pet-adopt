module Faker
  class Pet
    class << self

      def sample
        pets.sample
      end

      def cats
        @cats ||= YAML.load File.read File.join(Rails.root, 'lib/sample/cats.yaml')
      end

      def dogs
        @dogs ||= YAML.load File.read File.join(Rails.root, 'lib/sample/dogs.yaml')
      end

      def pets
        @pets ||= cats + dogs
      end
    end
  end
end
