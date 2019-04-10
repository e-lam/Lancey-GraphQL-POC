alias Api.Repo
alias Api.Content.Post

Repo.insert!(%Post{
  title: "Lorem ipsum dolor sit amet",
  description:
    "Sed mattis tincidunt erat eu volutpat. Vivamus scelerisque, ex nec tempus ultricies, sapien odio tempor purus, dictum hendrerit magna tellus ac justo.",
  author_id: "1"
})

Repo.insert!(%Post{
  title: "Mauris porttitor erat ut viverra",
  description:
    "Ut venenatis eleifend elit ut pulvinar. Nam finibus ante turpis, id pharetra risus fringilla a. Quisque ut purus porttitor, venenatis mauris eu, fermentum quam.",
  author_id: "1"
})

Repo.insert!(%Post{
  title: "Nunc at gravida odio",
  description:
    "Vivamus consequat ipsum nec massa ultrices, id euismod ipsum luctus. Fusce id posuere lorem. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas.",
  author_id: "2"
})
