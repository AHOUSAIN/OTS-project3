FactoryGirl.define do
t = Time.now

  
  factory :user do
    
    name "Afrah"
    email "foobar@foobar.com"
    mobile_number "97455642248"
    account_name  "Afrah"
    account_number "444-444-2005"
    password "foobar"
    password_confirmation "foobar"
    
end

        factory :movie do
                name "The Ring"
                genre "Horror"
                duration "130"
                rating "3"
                language "English"
                cast "This is a note"
                description "This is a note"
        end
        
        
        factory :showing do
          type "3D"
          time  t
          movie_id 1
          association :movie
        end

end