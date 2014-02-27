# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :event do
    name "MyString"
    dt "2014-02-27 18:23:03"
    description "MyText"
    invite_dt_from "2014-02-27 18:23:03"
    invite_dt_to "2014-02-27 18:23:03"
    participant_min 1
    participant_max 1
    answer_limit "MyText"
    im_in false
    publish_present false
  end
end
