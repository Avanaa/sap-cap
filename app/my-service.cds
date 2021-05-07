using { MyService } from '../srv/my-service';

annotate MyService.Posts with @(
    UI : {
        HeaderInfo  : {
            $Type : 'UI.HeaderInfoType',
            TypeName : 'Post',
            TypeNamePlural : 'Posts',
            Description : {Value: title }
        },
        Facets : [
            {$Type: 'UI.ReferenceFacet', Label: 'Geral', Target: '@UI.FieldGroup#General'},
            {$Type: 'UI.ReferenceFacet', Label: 'Conteudo', Target: '@UI.FieldGroup#Content'},
            {$Type: 'UI.ReferenceFacet', Label: 'Comentarios', Target: 'comments/@UI.LineItem'}
        ],
        FieldGroup#General : {
            Data : [ {Value : author.name, Label: 'Autor'} ]
        },
        FieldGroup#Content : {
            Data : [ {Value : content, Label: 'Conteúdo'} ]
        },
        
        Identification  : [{Value:title}],
        SelectionFields : [title],
        LineItem : 
        [
            {Value : title, Label: 'Titulo'},
            {Value : author.name, Label: 'Autor'},
            {Value : content, Label: 'Conteúdo'}
        ]
    });

annotate MyService.Comments with @(
    UI : {
        LineItem : 
        [
            {Value : author.name},
            {Value : content}
        ]
    });