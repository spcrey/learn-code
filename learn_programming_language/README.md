#### Python
``` bash
python main.py
```

#### C
``` bash
gcc main.c -o main && ./main && rm ./main
```

#### Cpp
``` bash
g++ main.cpp -o main && ./main && rm ./main
```

#### HTML
``` bash
python -m http.server
```

#### Java Script
``` bash
node script.js
```

#### Java
``` bash
javac Main.java && java Main && rm ./Main.class
```

#### Kotlin
``` bash
kotlinc main.kt && java MainKt && rm ./MainKt.class && rm -rf META-INF
```

#### Sqlite
``` bash
sqlite3 database.db < main.sql && rm database.db
```

#### Go
``` bash
go run main.go
```

#### Type Script
``` bash
tsc main.ts && node main.js && rm main.js
```

#### Shell
``` bash
bash main.sh
```

#### Redis
redis-server --daemonize yes && redis-cli --eval main.lua
