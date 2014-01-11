FactoryGirl.define do
   factory :comment do |f|
        f.username "Foo"
        f.content "Bar"
        #gotel
   end
end
FactoryGirl.define do
  factory :rating do |f|
    f.value 2
  end
end