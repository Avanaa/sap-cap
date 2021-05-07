namespace my.schema;
using { cuid } from '@sap/cds/common';

entity Comments @cds.autoexpose : cuid {
    author : Association to Authors;
    post : Association to Posts;
    content : String;
};

entity Posts : cuid {
    title : String;
    content : String;
    author : Association to Authors;
    comments : Association to many Comments on comments.post = $self;
}

entity Authors @cds.autoexpose : cuid {
    name : String;
    posts : Association to many Posts on posts.author = $self;
    comments : Association to many Comments on comments.author = $self;
}
