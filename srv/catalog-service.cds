using myapp as my from '../db/schema';

service CatalogService {
    entity workshops as projection on my.workshops;
}
annotate my.workshops with {
    id @title: 'ID';
    title @title: 'Title';
    region @title: 'Region';
    startdate @title: 'Start Date';
    status @title: 'Status';
}
annotate my.workshops with @(
    UI: {
        // Main Screen
        SelectionFields: [ title, region, startdate, status ],
        LineItem: [
            {Value: title},
            {Value: region},
            {Value: startdate},
            {Value: status}
        ],
        HeaderInfo: {
            TypeNamePlural: 'workshops',
            Title: { Value: title },
            Description: { Value: id }
        }
    }
);