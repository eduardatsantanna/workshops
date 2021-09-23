namespace myapp;

entity workshops {
    key id : Integer;
        title : String(100);
        region : String(100);
        startdate : Date;
        status : String(1000)
}