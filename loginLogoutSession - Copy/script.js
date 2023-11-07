 // showing or hiding columns
    function toggleColumn(columnName) {
        var table = document.querySelector('.table');
        var columnIndex = -1;
        
        var headers = table.querySelectorAll('thead th');
        for (var i = 0; i < headers.length; i++) {
            if (headers[i].textContent === columnName) {
                columnIndex = i;
                break;
            }
        }
        
        if (columnIndex >= 0) {
            var rows = table.querySelectorAll('tbody tr');
            
            if (headers[columnIndex].style.display === 'none') {
                headers[columnIndex].style.display = '';
                for (var j = 0; j < rows.length; j++) {
                    rows[j].querySelectorAll('td')[columnIndex].style.display = '';
                }
            } else {
                headers[columnIndex].style.display = 'none';
                for (var j = 0; j < rows.length; j++) {
                    rows[j].querySelectorAll('td')[columnIndex].style.display = 'none';
                }
            }
        }
    }