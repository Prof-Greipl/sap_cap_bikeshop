using my.bikeshop as my from '../db/schema';

service CatalogService @(path:'/catalog') {
    entity Bikes as projection on my.Bikes;
}