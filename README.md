# 4차산업혁명 선도인재 양성 프로젝트 과정

---
## 1. Week 1 Day 20:   

***



1. Chef

https://www.chef.io/chef/

자동화 tool



##### validation + code check

rails g scaffold post title content:text user:references

rake db:migrate -> rake test

/test/controllers/posts_controller_test.rb



```ruby
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:posts)
  end
```

get :index #url이 잘 잘동되는지 물어보는것



/test/fixtures/posts.yml

rake db:drop

rake db:migrate

rake db:fixtures:load

```ruby
one:
  title: <%= Faker::HarryPotter.location %>
  content: <%= Faker::HarryPotter.quote %>
  user_id:
```



#### Validation 유효성 검사 4단계

Model Validation

db에 저장될때 database자체적으로 DB Validation

Front-end Validation

가장 낮은 단계인  DB Validation

/db/migrate/20171201003904_create_posts.rb

여기서부터 시작

null: false랑 deafult 값

db가 없을때 꺠질수 있기에 무조건 방어적으로 기초적 꼭 코드 등록

앞으로 null값은 받지 않는다.

```ruby
      t.string :title, null: false, default: ""
      t.text :content, null: false, default: ""
      t.references :user, index: true, foreign_key: true, null: false
```



rails g model comment content:text posts:references user:references



comment.rb에

```ruby
validates :content, presence: true
```



user에 의존해 하고 있는 posts 가 있다면 그 해당 posts를 삭제한다.

user에게 많은 posts, posts에는 많은 comments

해당하는게 없으면



posts 에 관한 리소트 라우팅을 할때

```ruby
  resources :posts do
    member do # posts/:id/create_comment =>
      get 'create_comment'
    end
  end
```



#### ajax.comment





#### EC2

1. ubuntu 16.04
2. 이름.pem 생성
3. public ip = 34.216.144.173
4. pem 폴더로
5. ssh -i dohyun.pem ubuntu@34.216.144.173
6. chmod 400 dohyun.pem



##### Asset pipeline

p.496 참고

rake assets:precompile

assets 폴더 내에



123123

123123

mysql -u root -p



rake db:create RAILS_ENV=production

rake db:migrate RAILS_ENV=production
