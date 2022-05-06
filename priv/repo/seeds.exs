alias AppA.News.Link
alias AppA.Repo

%Link{url: "http://graphql.org/", description: "The Best Query Language", author_id: 4}
|> Repo.insert!()

%Link{url: "http://dev.apollodata.com/", description: "Awesome GraphQL Client", author_id: 5}
|> Repo.insert!()
