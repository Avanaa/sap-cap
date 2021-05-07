using { my.schema as schema } from '../db/my-schema';

@(path: '/myBlog')
@(impl: './imp/my-service')
service MyService {
    entity Posts as projection on schema.Posts;
}