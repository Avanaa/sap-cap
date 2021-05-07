using { my.schema as schema } from '../db/my-schema';

service MyService {
    entity Posts as projection on schema.Posts;
}