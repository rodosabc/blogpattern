# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.delete_all
Post.delete_all
Comment.delete_all

# USERS
User.create(:email => 'admin@example.com',
           :password => '123456',
           :password_confirmation => '123456',
           :admin => true)
User.create(:email => 'user1@example.com',
           :password => '123456',
           :password_confirmation => '123456',
           :admin => false)
User.create(:email => 'user2@example.com',
           :password => '123456',
           :password_confirmation => '123456',
           :admin => false)


# POSTS
Post.create(:title => 'Testing post 1',
            :body => 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.
              Nam faucibus dui in tellus vestibulum, eu gravida quam pellentesque. Quisque
              nisl erat, lacinia et enim vitae, vulputate elementum ante. Pellentesque habitant
               morbi tristique senectus et netus et malesuada fames ac turpis egestas. Suspendisse
               eget pellentesque enim. Donec sagittis odio vel elit semper tempor. Suspendisse porta
               sem velit. Vivamus ornare volutpat tellus ac vehicula. Cras rhoncus lectus ut
              volutpat eleifend. Maecenas ornare lacinia ligula, iaculis luctus ex ultricies at.
              Duis et mauris in metus suscipit venenatis. Maecenas id placerat mauris. Cras
              dictum dictum lectus, at tristique sapien accumsan sit amet. Quisque aliquam
              tincidunt nunc vel consequat. Nam venenatis, est quis sagittis rutrum, arcu
              eros faucibus felis, vitae dapibus mi sem non lacus. Aenean euismod pulvinar
               neque a eleifend. ',
            :user => User.find_by(:email => 'user1@example.com'))
Post.create(:title => 'Testing post 2',
            :body => 'Curabitur iaculis magna sit amet arcu rutrum rutrum. Proin tempor
              neque ut ornare ultricies. Curabitur consequat purus et euismod varius. Nunc blandit
              placerat tellus, sed efficitur quam consectetur ac. Suspendisse rutrum leo nisi,
              fringilla sodales arcu gravida ornare. In tempor, turpis at fringilla fringilla, nisi
               velit egestas urna, et ultrices lorem orci iaculis augue. Sed gravida leo eget leo
              sollicitudin malesuada. In nec erat et magna convallis rutrum. Integer lobortis laoreet aliquet.
               In sit amet lacinia nibh, id molestie est. Aliquam erat volutpat. ',
            :user => User.find_by(:email => 'user1@example.com'))
Post.create(:title => 'Testing post 3',
            :body => 'Nam et tortor urna. Nunc aliquet malesuada nibh, ac gravida urna vestibulum nec.
            Nulla mollis tortor pellentesque dolor pellentesque, a cursus lectus volutpat. Morbi volutpat turpis
            at turpis rhoncus pellentesque. Aliquam vehicula eleifend ex vel ultricies. Donec sit amet metus ac
             magna porta accumsan. Aliquam erat volutpat. Nullam lobortis tellus at sodales bibendum. ',
            :user => User.find_by(:email => 'user2@example.com'))
Post.create(:title => 'Testing post 4',
            :body => 'Sed sollicitudin neque at felis tincidunt, ut iaculis libero molestie. Suspendisse
              facilisis fermentum velit elementum dictum. Integer turpis justo, cursus vitae lacus nec, placerat
              scelerisque elit. Integer nec sem ornare neque feugiat molestie in id mauris. Pellentesque sagittis
              sapien quis erat pharetra, vel dignissim enim mollis. Proin fermentum risus ante, quis eleifend nunc
              ultrices a. Quisque tristique mollis tempor. Donec risus libero, euismod finibus scelerisque ut,
               facilisis a dui. ',
            :user => User.find_by(:email => 'user1@example.com'))
Post.create(:title => 'Testing post 5',
            :body => 'Sed elementum, dolor non fringilla sodales, metus risus dictum nisl, in
             egestas lacus diam eget felis. Sed fermentum eu orci vitae finibus. Quisque vel rutrum ligula,
             sed pretium nunc. Nam pellentesque urna mauris. Mauris viverra ex commodo auctor
            elementum. Vestibulum aliquam lacinia odio, ut tristique lorem dapibus sed.
            In nec eros semper, finibus dolor id, ullamcorper nibh. Vivamus ac luctus felis.
            Sed varius id risus ac venenatis. Pellentesque vehicula sodales magna eleifend pretium.
            Nunc tempus, arcu ac aliquam feugiat, ex orci luctus tellus, a commodo enim tortor a sapien.
            Aliquam mattis maximus lectus ac mollis. Fusce aliquam laoreet dolor, eget sodales elit aliquam id. ',
            :user => User.find_by(:email => 'user2@example.com'))
Post.create(:title => 'Testing post 6',
            :body => 'Praesent quis dui sapien. Vestibulum ultricies pharetra quam vitae auctor.
              Vivamus maximus gravida auctor. In facilisis metus iaculis metus condimentum rutrum.
              Vivamus in dui cursus, bibendum velit ut, auctor ante.
              Ut consequat, nibh a gravida ornare, ligula erat sodales orci, id tristique ligula velit eu augue.
               Vestibulum sodales arcu a sem maximus, semper porttitor ligula tincidunt.
              Vestibulum tristique et dolor id varius. Donec eu turpis tempus, accumsan sapien id, malesuada purus.
               Pellentesque porttitor lobortis purus ut pellentesque.
              Donec justo nunc, bibendum vel tortor ut, tempor vestibulum leo. In id mollis purus.
               Praesent ut risus velit. Ut eu finibus erat, et venenatis nisi.
              Nulla et eros quis ante varius molestie ac ut ligula. ',
            :user => User.find_by(:email => 'user2@example.com'))
Post.create(:title => 'Testing post 7',
            :body => 'Nulla consectetur odio vel rutrum laoreet.
              Sed cursus faucibus volutpat. Proin aliquam eu libero lobortis interdum.
              Vestibulum ac porta justo, vel sagittis massa. Suspendisse non scelerisque felis.
               Morbi et nulla id justo blandit auctor ac at massa.
              Nullam id tempor eros. Integer ac eros tristique, commodo elit et, condimentum tortor.
              Maecenas pulvinar dictum hendrerit. Cras nec rutrum urna. ',
            :user => User.find_by(:email => 'user1@example.com'))

# COMMENTS

Comment.create(:body => 'Testing comment 1',
               :post => Post.find_by(:title => 'Testing post 1'),
               :author => 'user1@example.com',
               :user => User.find_by(:email => 'user1@example.com'))
Comment.create(:body => 'Testing comment 2',
               :post => Post.find_by(:title => 'Testing post 1'),
               :author => 'user2@example.com',
               :user => User.find_by(:email => 'user1@example.com'))
Comment.create(:body => 'Testing comment 3',
               :post => Post.find_by(:title => 'Testing post 1'),
               :author => 'user1@example.com',
               :user => User.find_by(:email => 'user1@example.com'))
Comment.create(:body => 'Testing comment 4',
               :post => Post.find_by(:title => 'Testing post 2'),
               :author => 'user2@example.com',
               :user => User.find_by(:email => 'user1@example.com'))
Comment.create(:body => 'Testing comment 5',
               :post => Post.find_by(:title => 'Testing post 2'),
               :author => 'user1@example.com',
               :user => User.find_by(:email => 'user1@example.com'))
Comment.create(:body => 'Testing comment 6',
               :post => Post.find_by(:title => 'Testing post 2'),
               :author => 'user2@example.com',
               :user => User.find_by(:email => 'user1@example.com'))
Comment.create(:body => 'Testing comment 7',
               :post => Post.find_by(:title => 'Testing post 2'),
               :author => 'user1@example.com',
               :user => User.find_by(:email => 'user1@example.com'))
Comment.create(:body => 'Testing comment 8',
               :post => Post.find_by(:title => 'Testing post 3'),
               :author => 'user2@example.com',
               :user => User.find_by(:email => 'user1@example.com'))
Comment.create(:body => 'Testing comment 9',
               :post => Post.find_by(:title => 'Testing post 3'),
               :author => 'user2@example.com',
               :user => User.find_by(:email => 'user1@example.com'))
Comment.create(:body => 'Testing comment 10',
               :post => Post.find_by(:title => 'Testing post 4'),
               :author => 'user1@example.com',
               :user => User.find_by(:email => 'user1@example.com'))
Comment.create(:body => 'Testing comment 11',
               :post => Post.find_by(:title => 'Testing post 4'),
               :author => 'user1@example.com',
               :user => User.find_by(:email => 'user1@example.com'))
Comment.create(:body => 'Testing comment 12',
               :post => Post.find_by(:title => 'Testing post 4'),
               :author => 'user2@example.com',
               :user => User.find_by(:email => 'user1@example.com'))
Comment.create(:body => 'Testing comment 13',
               :post => Post.find_by(:title => 'Testing post 5'),
               :author => 'user2@example.com',
               :user => User.find_by(:email => 'user1@example.com'))
Comment.create(:body => 'Testing comment 14',
               :post => Post.find_by(:title => 'Testing post 5'),
               :author => 'user2@example.com',
               :user => User.find_by(:email => 'user1@example.com'))
Comment.create(:body => 'Testing comment 15',
               :post => Post.find_by(:title => 'Testing post 5'),
               :author => 'user2@example.com',
               :user => User.find_by(:email => 'user1@example.com'))
Comment.create(:body => 'Testing comment 16',
               :post => Post.find_by(:title => 'Testing post 6'),
               :author => 'user1@example.com',
               :user => User.find_by(:email => 'user1@example.com'))
Comment.create(:body => 'Testing comment 17',
               :post => Post.find_by(:title => 'Testing post 6'),
               :author => 'user1@example.com',
               :user => User.find_by(:email => 'user1@example.com'))
Comment.create(:body => 'Testing comment 18',
               :post => Post.find_by(:title => 'Testing post 6'),
               :author => 'user1@example.com',
               :user => User.find_by(:email => 'user1@example.com'))
Comment.create(:body => 'Testing comment 19',
               :post => Post.find_by(:title => 'Testing post 7'),
               :author => 'user1@example.com',
               :user => User.find_by(:email => 'user1@example.com'))
Comment.create(:body => 'Testing comment 20',
               :post => Post.find_by(:title => 'Testing post 7'),
               :author => 'user2@example.com',
               :user => User.find_by(:email => 'user1@example.com'))
Comment.create(:body => 'Testing comment 21',
               :post => Post.find_by(:title => 'Testing post 7'),
               :author => 'user2@example.com',
               :user => User.find_by(:email => 'user1@example.com'))

