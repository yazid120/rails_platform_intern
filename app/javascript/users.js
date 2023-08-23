
import jquery from 'jquery';

window.jQuery = jquery;
import DataTable from 'datatables.net-dt';

new DataTable("#users-datatable", {
    "procession":true,
    "serverSide":true,
    "ajax":{
        //
    },
    "pagingType":"full_numbers",
    "columns":[
        {"data":"id"},
        {"data":"email"}
    ]
})

