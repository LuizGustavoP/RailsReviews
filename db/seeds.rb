# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

developers = Developer.create([{nome: 'Capcom', descr:'Japanese game company'},{nome: 'EA', descr:'American game company'},{nome: 'Ubisoft', descr:'American game company'},{nome: 'Supergiant Games', descr:'American game company'},{nome: 'Ice Pick Lodge', descr:'Russian game company'},{nome: 'Naughty Dog', descr:'American game company'}])

publishers = Publisher.create([{nome: 'Capcom', descr: 'Japanese publisher'}, {nome: 'EA', descr: 'American game company'}, {nome: 'Tencent', descr: 'Chinese game company'}])

platforms = Platform.create([{nome: 'Nintendo Switch', gen: 8}, {nome: 'Playstation 4', gen: 8}, {nome: 'Xbox One', gen: 8}, {nome: 'Nintendo Wii U', gen: 8}, {nome: 'Playstation 3', gen: 7}, {nome: 'Playstation Vita', gen: 7}, {nome: 'Nintendo Wii', gen: 7}, {nome: 'Xbox 360', gen: 7}])
