adam = Blog.Repo.insert! %Blog.User{
  name: "adam",
  password: "123",
  email: "foo@bar.com"
}

natka = Blog.Repo.insert! %Blog.User{
  name: "natka",
  password: "123",
  email: "blah@yarn.narn"
}

Blog.Repo.insert! %Blog.Post{
  content: "lorem ipsum",
  title: "Post 1",
  user_id: adam.id
}

Blog.Repo.insert! %Blog.Post{
  content: "lorem ipsum",
  title: "Post 2",
  user_id: adam.id
}

Blog.Repo.insert! %Blog.Post{
  content: "lorem ipsum",
  title: "Post 3",
  user_id: natka.id
}

Blog.Repo.insert! %Blog.Post{
  content: "lorem ipsum",
  title: "Post 3",
  user_id: adam.id
}
