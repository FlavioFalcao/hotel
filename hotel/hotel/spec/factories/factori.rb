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
FactoryGirl.define do
  factory :gotel do |f|
    f.title "gotel"
    f.room_description "lorem ipsum"
    f.breakfast "Yes"
    f.price_for_room 100.00
  end
end
FactoryGirl.define do
  factory :location do |f|
    f.country "usa"
    f.state "Texas"
    f.city "Dallas"
    f.street "Rodeo drive"
  end
end
FactoryGirl.define do
  factory :user do |f|
    f.username "Artem"
    f.email "art@art.com"
    f.password "12345678"
  end
end