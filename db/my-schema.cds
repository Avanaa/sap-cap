namespace my.schema;

entity Comments @cds.autoexpose {
    key ID : Integer;
    author : Association to Authors;
    post : Association to Posts;
    content : String;
};

entity Posts {
    key ID : Integer;
    title : String;
    content : String;
    author : Association to Authors;
    comments : Association to many Comments on comments.post = $self;
}

entity Authors @cds.autoexpose {
    key ID : Integer;
    name : String;
    posts : Association to many Posts on posts.author = $self;
    comments : Association to many Comments on comments.author = $self;
}
