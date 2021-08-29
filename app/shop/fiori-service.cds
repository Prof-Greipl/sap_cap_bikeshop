using CatalogService from '../../srv/catalog-service';

annotate CatalogService.Bikes with @(
  UI: {
      Identification: [{Value:title}],
    SelectionFields: [ title ],
    LineItem: [
        {Value: ID},
      {Value: title},
      {Value: stock}
      ],
      HeaderInfo: {
            TypeName: 'Book',
            TypeNamePlural: 'Books',
            Title: {Value: title},                               
        }
  }
);

/*
For Headline der Tabelle
*/
annotate CatalogService.Bikes with {
    ID @title: '{i18n>ID}' @UI.HiddenFilter;
    title @title: '{i18n>Title}';
    stock @title: '{i18n>Stock}';    
}