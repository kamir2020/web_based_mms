<?php
include "db_config.php";
// function login
function login($username) {
    global $conn;

    $stmt = $conn->prepare("SELECT * FROM tbl_user WHERE username = '".$username."'");
    $stmt->execute();
    $result = $stmt->fetch(PDO::FETCH_ASSOC);

    return $result;

}

// function display 2
function displayData1($sql) {
    global $conn;
	
    $query = $conn->prepare($sql);
    $query->execute();
    $result = $query->fetch(PDO::FETCH_ASSOC);	

    return $result;
}


function displayData2($sql) {
    global $conn;

    $query = $conn->prepare($sql);
    $query->execute();
	
	
    if ($query->rowCount() > 0) {
        while($row = $query->fetch(PDO::FETCH_ASSOC)) {
            $result[] = $row;
        }
    }
    else {
        $result='';
    }

    return $result;
}

//function insert
function insertData1($sql) {
    global $conn;
    $stmt= $conn->prepare($sql);

    try {
        $stmt->execute();
        $result = 'true';
    } catch (PDOException $e) {
        if ($e->errorInfo[1] == 1062) {
            $result = 'false';
        } else {
            $result = 'false';
        }
    }

    return $result;
}

function insertData2($sql) {
    global $conn;
    $stmt = $conn->prepare($sql);
    
    try {
        $stmt->execute();
        $id = $conn->lastInsertId();
    }
    catch (Exception $e){
        $e = "0";
        $id = $e;
    }

    return  $id;
}

function insertData3(string $sql, array $params = []): int {
    global $conn;
    try {
        $stmt = $conn->prepare($sql);
        $stmt->execute($params);
        return (int)$conn->lastInsertId();
    } catch (Throwable $e) {
        return 0;
    }
}

function respond(bool $ok, int $statusCode, string $message, $id = null): void {
    http_response_code($statusCode);
    echo json_encode([
        'ok' => $ok,
        'statusCode' => $statusCode,
        'message' => $message,
        'id' => $id,
    ]);
    exit;
}

function require_keys(array $data, array $required): array {
    $missing = [];
    foreach ($required as $k) {
        if (!array_key_exists($k, $data)) {
            $missing[] = $k;
        }
    }
    return $missing;
}

// function delete
function deleteData($sql) {
    global $conn;
    $stmt= $conn->prepare($sql);

    try {
        $stmt->execute();
        $result = 'true';
    } catch (PDOException $e) {
        if ($e->errorInfo[1] == 1062) {
            $result = 'false';
        } else {
            $result = 'false';
        }
    }

    return $result;
}

function deleteItem($sql) {
    global $conn;
    $stmt= $conn->prepare($sql);

    try {
        $stmt->execute();
        $result = 'true';
    } catch (PDOException $e) {
        if ($e->errorInfo[1] == 1062) {
            $result = 'false';
        } else {
            $result = 'false';
        }
    }

    return $result;
}

// function update
function updateData($sql) {
    global $conn;
    $stmt= $conn->prepare($sql);

    try {
        $stmt->execute();
        $result = 'true';
    } catch (PDOException $e) {
        if ($e->errorInfo[1] == 1062) {
            $result = 'false';
        } else {
            $result = 'false';
        }
    }

    return $result;
}
?>