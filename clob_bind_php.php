<?php
//can be used with email proc accepting clob
        $message = oci_new_descriptor($conn, OCI_D_LOB);
        $s = oci_parse($conn, $sql);         
        oci_bind_by_name($s, ":v_msg", $message, -1, OCI_B_CLOB);
        $message->WriteTemporary($msg);        
        oci_execute($s);               
        oci_free_statement($s);
