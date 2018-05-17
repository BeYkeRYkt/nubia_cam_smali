.class public Lcom/loc/bi;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private b:Ljava/lang/String;

.field private bhb:Landroid/content/Context;

.field private bhc:Lcom/loc/bd;

.field private bhd:Landroid/content/ServiceConnection;

.field private bhe:Landroid/content/ServiceConnection;

.field private bhf:Landroid/content/Intent;

.field private bhg:Z

.field private bhh:Z

.field bhi:Lcom/loc/an;

.field private d:Z

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private n:Ljava/lang/String;

.field private o:Ljava/lang/String;

.field private p:Ljava/lang/String;

.field private q:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .registers 5

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/loc/bi;->b:Ljava/lang/String;

    iput-object v1, p0, Lcom/loc/bi;->bhb:Landroid/content/Context;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/loc/bi;->d:Z

    iput-object v1, p0, Lcom/loc/bi;->bhc:Lcom/loc/bd;

    iput-object v1, p0, Lcom/loc/bi;->bhd:Landroid/content/ServiceConnection;

    iput-object v1, p0, Lcom/loc/bi;->bhe:Landroid/content/ServiceConnection;

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iput-object v0, p0, Lcom/loc/bi;->bhf:Landroid/content/Intent;

    const-string/jumbo v0, "com.autonavi.minimap"

    iput-object v0, p0, Lcom/loc/bi;->i:Ljava/lang/String;

    const-string/jumbo v0, "com.amap.api.service.AMapService"

    iput-object v0, p0, Lcom/loc/bi;->j:Ljava/lang/String;

    const-string/jumbo v0, "com.autonavi.minimap.LBSConnectionService"

    iput-object v0, p0, Lcom/loc/bi;->k:Ljava/lang/String;

    iput-boolean v2, p0, Lcom/loc/bi;->bhg:Z

    iput-boolean v2, p0, Lcom/loc/bi;->bhh:Z

    iput-object v1, p0, Lcom/loc/bi;->bhi:Lcom/loc/an;

    const-string/jumbo v0, "invaid type"

    iput-object v0, p0, Lcom/loc/bi;->n:Ljava/lang/String;

    const-string/jumbo v0, "empty appkey"

    iput-object v0, p0, Lcom/loc/bi;->o:Ljava/lang/String;

    const-string/jumbo v0, "refused"

    iput-object v0, p0, Lcom/loc/bi;->p:Ljava/lang/String;

    const-string/jumbo v0, "failed"

    iput-object v0, p0, Lcom/loc/bi;->q:Ljava/lang/String;

    iput-object p1, p0, Lcom/loc/bi;->bhb:Landroid/content/Context;

    :try_start_44
    invoke-static {p1}, Lcom/loc/M;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "UTF-8"

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    const-string/jumbo v1, "MIIEvgIBADANBgkqhkiG9w0BAQEFAASCBKgwggSkAgEAAoIBAQDCEYwdO3V2ANrhApjqyk7X8FH5AEaWly58kP9IDAhMqwtIbmcJrUK9oO9Afh3KZnOlDtjiowy733YqpLRO7WBvdbW/c4Dz/d3dy/m+6HMqxaak+GQQRHw/VPdKciaZ3eIZp4MWOyIQwiFSQvPTAo/Na8hV4SgBZHB3lGFw0yu+BmG+h32eIE6p4Y8EDCn+G+yzekX+taMrWTQIysledrygZSGPv1ukbdFDnH/xZEI0dCr9pZT+AZQl3o9a2aMyuRrHM0oupXKKiYl69Y8fKh1Tyd752rF6LrR5uOb9aOfXt18hb+3YL5P9rQ+ZRYbyHYFaxzBPA2jLq0KUQ+Dmg7YhAgMBAAECggEAL9pj0lF3BUHwtssNKdf42QZJMD0BKuDcdZrLV9ifs0f54EJY5enzKw8j76MpdV8N5QVkNX4/BZR0bs9uJogh31oHFs5EXeWbb7V8P7bRrxpNnSAijGBWwscQsyqymf48YlcL28949ujnjoEz3jQjgWOyYnrCgpVhphrQbCGmB5TcZnTFvHfozt/0tzuMj5na5lRnkD0kYXgr0x/SRZcPoCybSpc3t/B/9MAAboGaV/QQkTotr7VOuJfaPRjvg8rzyPzavo3evxsjXj7vDXbN4w0cbk/Uqn2JtvPQ8HoysmF2HdYvILZibvJmWH1hA58b4sn5s6AqFRjMOL7rHdD+gQKBgQD+IzoofmZK5tTxgO9sWsG71IUeshQP9fe159jKCehk1RfuIqqbRP0UcxJiw4eNjHs4zU0HeRL3iF5XfUs0FQanO/pp6YL1xgVdfQlDdTdk6KFHJ0sUJapnJn1S2k7IKfRKE1+rkofSXMYUTsgHF1fDp+gxy4yUMY+h9O+JlKVKOwKBgQDDfaDIblaSm+B0lyG//wFPynAeGd0Q8wcMZbQQ/LWMJZhMZ7fyUZ+A6eL/jB53a2tgnaw2rXBpMe1qu8uSpym2plU0fkgLAnVugS5+KRhOkUHyorcbpVZbs5azf7GlTydR5dI1PHF3Bncemoa6IsEvumHWgQbVyTTz/O9mlFafUwKBgQCvDebms8KUf5JY1F6XfaCLWGVl8nZdVCmQFKbA7Lg2lI5KS3jHQWsupeEZRORffU/3nXsc1apZ9YY+r6CYvI77rRXd1KqPzxos/o7d96TzjkZhc9CEjTlmmh2jb5rqx/Ns/xFcZq/GGH+cx3ODZvHeZQ9NFY+9GLJ+dfB2DX0ZtwKBgQC+9/lZ8telbpqMqpqwqRaJ8LMn5JIdHZu0E6IcuhFLr+ogMW3zTKMpVtGGXEXi2M/TWRPDchiO2tQX4Q5T2/KW19QCbJ5KCwPWiGF3owN4tNOciDGh0xkSidRc0xAh8bnyejSoBry8zlcNUVztdkgMLOGonvCjZWPSOTNQnPYluwKBgCV+WVftpTk3l+OfAJTaXEPNYdh7+WQjzxZKjUaDzx80Ts7hRo2U+EQT7FBjQQNqmmDnWtujo5p1YmJC0FT3n1CVa7g901pb3b0RcOziYWAoJi0/+kLyeo6XBhuLeZ7h90S70GGh1o0V/j/9N1jb5DCL4xKkvdYePPTSTku0BM+n"

    invoke-static {v0, v1}, Lcom/loc/ai;->byf([BLjava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Lcom/loc/cz;->a([B)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/loc/bi;->b:Ljava/lang/String;
    :try_end_5c
    .catch Ljava/lang/Throwable; {:try_start_44 .. :try_end_5c} :catch_5d

    :goto_5c
    return-void

    :catch_5d
    move-exception v0

    const-string/jumbo v1, "ConnectionServiceManager"

    const-string/jumbo v2, "ConnectionServiceManager"

    invoke-static {v0, v1, v2}, Lcom/loc/bx;->bBD(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5c
.end method

.method private bAM(Landroid/os/Bundle;)Lcom/autonavi/aps/amapapi/model/AmapLoc;
    .registers 10

    const/4 v1, 0x0

    if-eqz p1, :cond_17

    const-string/jumbo v0, "key"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_18

    :goto_c
    move-object v0, v1

    :goto_d
    const-string/jumbo v2, "result"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_36

    :cond_16
    :goto_16
    return-object v1

    :cond_17
    return-object v1

    :cond_18
    const-string/jumbo v0, "key"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/loc/cz;->b(Ljava/lang/String;)[B

    move-result-object v0

    :try_start_23
    const-string/jumbo v2, "MIIEvgIBADANBgkqhkiG9w0BAQEFAASCBKgwggSkAgEAAoIBAQDCEYwdO3V2ANrhApjqyk7X8FH5AEaWly58kP9IDAhMqwtIbmcJrUK9oO9Afh3KZnOlDtjiowy733YqpLRO7WBvdbW/c4Dz/d3dy/m+6HMqxaak+GQQRHw/VPdKciaZ3eIZp4MWOyIQwiFSQvPTAo/Na8hV4SgBZHB3lGFw0yu+BmG+h32eIE6p4Y8EDCn+G+yzekX+taMrWTQIysledrygZSGPv1ukbdFDnH/xZEI0dCr9pZT+AZQl3o9a2aMyuRrHM0oupXKKiYl69Y8fKh1Tyd752rF6LrR5uOb9aOfXt18hb+3YL5P9rQ+ZRYbyHYFaxzBPA2jLq0KUQ+Dmg7YhAgMBAAECggEAL9pj0lF3BUHwtssNKdf42QZJMD0BKuDcdZrLV9ifs0f54EJY5enzKw8j76MpdV8N5QVkNX4/BZR0bs9uJogh31oHFs5EXeWbb7V8P7bRrxpNnSAijGBWwscQsyqymf48YlcL28949ujnjoEz3jQjgWOyYnrCgpVhphrQbCGmB5TcZnTFvHfozt/0tzuMj5na5lRnkD0kYXgr0x/SRZcPoCybSpc3t/B/9MAAboGaV/QQkTotr7VOuJfaPRjvg8rzyPzavo3evxsjXj7vDXbN4w0cbk/Uqn2JtvPQ8HoysmF2HdYvILZibvJmWH1hA58b4sn5s6AqFRjMOL7rHdD+gQKBgQD+IzoofmZK5tTxgO9sWsG71IUeshQP9fe159jKCehk1RfuIqqbRP0UcxJiw4eNjHs4zU0HeRL3iF5XfUs0FQanO/pp6YL1xgVdfQlDdTdk6KFHJ0sUJapnJn1S2k7IKfRKE1+rkofSXMYUTsgHF1fDp+gxy4yUMY+h9O+JlKVKOwKBgQDDfaDIblaSm+B0lyG//wFPynAeGd0Q8wcMZbQQ/LWMJZhMZ7fyUZ+A6eL/jB53a2tgnaw2rXBpMe1qu8uSpym2plU0fkgLAnVugS5+KRhOkUHyorcbpVZbs5azf7GlTydR5dI1PHF3Bncemoa6IsEvumHWgQbVyTTz/O9mlFafUwKBgQCvDebms8KUf5JY1F6XfaCLWGVl8nZdVCmQFKbA7Lg2lI5KS3jHQWsupeEZRORffU/3nXsc1apZ9YY+r6CYvI77rRXd1KqPzxos/o7d96TzjkZhc9CEjTlmmh2jb5rqx/Ns/xFcZq/GGH+cx3ODZvHeZQ9NFY+9GLJ+dfB2DX0ZtwKBgQC+9/lZ8telbpqMqpqwqRaJ8LMn5JIdHZu0E6IcuhFLr+ogMW3zTKMpVtGGXEXi2M/TWRPDchiO2tQX4Q5T2/KW19QCbJ5KCwPWiGF3owN4tNOciDGh0xkSidRc0xAh8bnyejSoBry8zlcNUVztdkgMLOGonvCjZWPSOTNQnPYluwKBgCV+WVftpTk3l+OfAJTaXEPNYdh7+WQjzxZKjUaDzx80Ts7hRo2U+EQT7FBjQQNqmmDnWtujo5p1YmJC0FT3n1CVa7g901pb3b0RcOziYWAoJi0/+kLyeo6XBhuLeZ7h90S70GGh1o0V/j/9N1jb5DCL4xKkvdYePPTSTku0BM+n"

    invoke-static {v0, v2}, Lcom/loc/ai;->byg([BLjava/lang/String;)[B
    :try_end_29
    .catch Ljava/lang/Throwable; {:try_start_23 .. :try_end_29} :catch_2b

    move-result-object v0

    goto :goto_d

    :catch_2b
    move-exception v0

    const-string/jumbo v2, "ConnectionServiceManager"

    const-string/jumbo v3, "parseData part"

    invoke-static {v0, v2, v3}, Lcom/loc/bx;->bBD(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_c

    :cond_36
    const-string/jumbo v2, "result"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/loc/cz;->b(Ljava/lang/String;)[B

    move-result-object v2

    :try_start_41
    invoke-static {v0, v2}, Lcom/loc/ai;->a([B[B)[B

    move-result-object v0

    new-instance v2, Ljava/lang/String;

    const-string/jumbo v3, "utf-8"

    invoke-direct {v2, v0, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    if-eqz v2, :cond_16

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "error"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_7a

    new-instance v2, Lcom/autonavi/aps/amapapi/model/AmapLoc;

    invoke-direct {v2, v0}, Lcom/autonavi/aps/amapapi/model/AmapLoc;-><init>(Lorg/json/JSONObject;)V

    const-string/jumbo v0, "lbs"

    invoke-virtual {v2, v0}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->bHH(Ljava/lang/String;)V

    const/4 v0, 0x7

    invoke-virtual {v2, v0}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->bHx(I)V

    const-string/jumbo v0, "WGS84"

    invoke-virtual {v2}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->bHU()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_bd

    :cond_79
    :goto_79
    return-object v2

    :cond_7a
    const-string/jumbo v2, "error"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/loc/bi;->n:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a2

    :goto_89
    iget-object v2, p0, Lcom/loc/bi;->o:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b5

    :goto_91
    iget-object v2, p0, Lcom/loc/bi;->p:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b9

    :goto_99
    iget-object v2, p0, Lcom/loc/bi;->q:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a1

    :cond_a1
    return-object v1

    :cond_a2
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/loc/bi;->d:Z
    :try_end_a5
    .catch Ljava/lang/Throwable; {:try_start_41 .. :try_end_a5} :catch_a6

    goto :goto_89

    :catch_a6
    move-exception v0

    const-class v2, Lcom/loc/bi;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "parseData"

    invoke-static {v0, v2, v3}, Lcom/loc/bx;->bBD(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_16

    :cond_b5
    const/4 v2, 0x0

    :try_start_b6
    iput-boolean v2, p0, Lcom/loc/bi;->d:Z

    goto :goto_91

    :cond_b9
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/loc/bi;->d:Z

    goto :goto_99

    :cond_bd
    invoke-virtual {v2}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->bHL()D

    move-result-wide v4

    invoke-virtual {v2}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->bHI()D

    move-result-wide v6

    invoke-static {v4, v5, v6, v7}, Lcom/loc/bx;->bBz(DD)Z

    move-result v0

    if-eqz v0, :cond_79

    iget-object v0, p0, Lcom/loc/bi;->bhb:Landroid/content/Context;

    invoke-virtual {v2}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->bHI()D

    move-result-wide v4

    invoke-virtual {v2}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->bHL()D

    move-result-wide v6

    invoke-static {v0, v4, v5, v6, v7}, Lcom/loc/ap;->byn(Landroid/content/Context;DD)Lcom/amap/api/location/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amap/api/location/f;->getLatitude()D

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->bHM(D)V

    invoke-virtual {v0}, Lcom/amap/api/location/f;->getLongitude()D

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->bHJ(D)V
    :try_end_e7
    .catch Ljava/lang/Throwable; {:try_start_b6 .. :try_end_e7} :catch_a6

    goto :goto_79
.end method

.method static synthetic bAN(Lcom/loc/bi;Lcom/loc/bd;)Lcom/loc/bd;
    .registers 2

    iput-object p1, p0, Lcom/loc/bi;->bhc:Lcom/loc/bd;

    return-object p1
.end method


# virtual methods
.method public a()V
    .registers 4

    const/4 v2, 0x0

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/loc/bi;->c()V

    iput-object v0, p0, Lcom/loc/bi;->bhb:Landroid/content/Context;

    iput-object v0, p0, Lcom/loc/bi;->bhc:Lcom/loc/bd;

    iput-object v0, p0, Lcom/loc/bi;->bhd:Landroid/content/ServiceConnection;

    iput-object v0, p0, Lcom/loc/bi;->bhe:Landroid/content/ServiceConnection;

    iget-object v0, p0, Lcom/loc/bi;->bhi:Lcom/loc/an;

    if-nez v0, :cond_19

    :goto_11
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/loc/bi;->d:Z

    iput-boolean v2, p0, Lcom/loc/bi;->bhg:Z

    iput-boolean v2, p0, Lcom/loc/bi;->bhh:Z

    return-void

    :cond_19
    iget-object v0, p0, Lcom/loc/bi;->bhi:Lcom/loc/an;

    const/4 v1, -0x1

    invoke-interface {v0, v1}, Lcom/loc/an;->a(I)V

    goto :goto_11
.end method

.method b()Z
    .registers 7

    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_2
    invoke-static {}, Lcom/loc/bR;->m()Z

    move-result v2

    if-nez v2, :cond_14

    :goto_8
    invoke-static {}, Lcom/loc/bR;->n()Z

    move-result v2

    if-nez v2, :cond_3c

    :goto_e
    iget-boolean v2, p0, Lcom/loc/bi;->bhg:Z

    if-nez v2, :cond_61

    :goto_12
    move v0, v1

    :cond_13
    return v0

    :cond_14
    iget-object v2, p0, Lcom/loc/bi;->bhf:Landroid/content/Intent;

    const-string/jumbo v3, "appkey"

    iget-object v4, p0, Lcom/loc/bi;->b:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v2, p0, Lcom/loc/bi;->bhf:Landroid/content/Intent;

    new-instance v3, Landroid/content/ComponentName;

    iget-object v4, p0, Lcom/loc/bi;->i:Ljava/lang/String;

    iget-object v5, p0, Lcom/loc/bi;->j:Ljava/lang/String;

    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    iget-object v2, p0, Lcom/loc/bi;->bhb:Landroid/content/Context;

    iget-object v3, p0, Lcom/loc/bi;->bhf:Landroid/content/Intent;

    iget-object v4, p0, Lcom/loc/bi;->bhd:Landroid/content/ServiceConnection;

    const/4 v5, 0x1

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v2

    iput-boolean v2, p0, Lcom/loc/bi;->bhg:Z

    goto :goto_8

    :catch_3a
    move-exception v0

    return v1

    :cond_3c
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v3, "appkey"

    iget-object v4, p0, Lcom/loc/bi;->b:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    new-instance v3, Landroid/content/ComponentName;

    iget-object v4, p0, Lcom/loc/bi;->i:Ljava/lang/String;

    iget-object v5, p0, Lcom/loc/bi;->k:Ljava/lang/String;

    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    iget-object v3, p0, Lcom/loc/bi;->bhb:Landroid/content/Context;

    iget-object v4, p0, Lcom/loc/bi;->bhe:Landroid/content/ServiceConnection;

    const/4 v5, 0x1

    invoke-virtual {v3, v2, v4, v5}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v2

    iput-boolean v2, p0, Lcom/loc/bi;->bhh:Z

    goto :goto_e

    :cond_61
    iget-boolean v2, p0, Lcom/loc/bi;->bhh:Z
    :try_end_63
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_63} :catch_3a

    if-nez v2, :cond_13

    goto :goto_12
.end method

.method public bAL(Lcom/loc/an;)V
    .registers 5

    :try_start_0
    iput-object p1, p0, Lcom/loc/bi;->bhi:Lcom/loc/an;

    iget-object v0, p0, Lcom/loc/bi;->bhd:Landroid/content/ServiceConnection;

    if-eqz v0, :cond_b

    :goto_6
    iget-object v0, p0, Lcom/loc/bi;->bhe:Landroid/content/ServiceConnection;

    if-eqz v0, :cond_1e

    :goto_a
    return-void

    :cond_b
    new-instance v0, Lcom/loc/cE;

    invoke-direct {v0, p0, p1}, Lcom/loc/cE;-><init>(Lcom/loc/bi;Lcom/loc/an;)V

    iput-object v0, p0, Lcom/loc/bi;->bhd:Landroid/content/ServiceConnection;
    :try_end_12
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_12} :catch_13

    goto :goto_6

    :catch_13
    move-exception v0

    const-string/jumbo v1, "ConnectionServiceManager"

    const-string/jumbo v2, "init"

    invoke-static {v0, v1, v2}, Lcom/loc/bx;->bBD(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_a

    :cond_1e
    :try_start_1e
    new-instance v0, Lcom/loc/ck;

    invoke-direct {v0, p0}, Lcom/loc/ck;-><init>(Lcom/loc/bi;)V

    iput-object v0, p0, Lcom/loc/bi;->bhe:Landroid/content/ServiceConnection;
    :try_end_25
    .catch Ljava/lang/Throwable; {:try_start_1e .. :try_end_25} :catch_13

    goto :goto_a
.end method

.method c()V
    .registers 4

    :try_start_0
    iget-boolean v0, p0, Lcom/loc/bi;->bhg:Z

    if-nez v0, :cond_c

    :goto_4
    iget-boolean v0, p0, Lcom/loc/bi;->bhh:Z
    :try_end_6
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_6} :catch_14
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_6} :catch_27

    if-nez v0, :cond_1f

    :goto_8
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/loc/bi;->bhc:Lcom/loc/bd;

    return-void

    :cond_c
    :try_start_c
    iget-object v0, p0, Lcom/loc/bi;->bhb:Landroid/content/Context;

    iget-object v1, p0, Lcom/loc/bi;->bhd:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_13
    .catch Ljava/lang/IllegalArgumentException; {:try_start_c .. :try_end_13} :catch_14
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_13} :catch_27

    goto :goto_4

    :catch_14
    move-exception v0

    const-string/jumbo v1, "ConnectionServiceManager"

    const-string/jumbo v2, "unbindService"

    invoke-static {v0, v1, v2}, Lcom/loc/bx;->bBD(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8

    :cond_1f
    :try_start_1f
    iget-object v0, p0, Lcom/loc/bi;->bhb:Landroid/content/Context;

    iget-object v1, p0, Lcom/loc/bi;->bhe:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_26
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1f .. :try_end_26} :catch_14
    .catch Ljava/lang/Throwable; {:try_start_1f .. :try_end_26} :catch_27

    goto :goto_8

    :catch_27
    move-exception v0

    const-string/jumbo v1, "ConnectionServiceManager"

    const-string/jumbo v2, "unbindService"

    invoke-static {v0, v1, v2}, Lcom/loc/bx;->bBD(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8
.end method

.method d()Lcom/autonavi/aps/amapapi/model/AmapLoc;
    .registers 5

    const/4 v3, 0x0

    :try_start_1
    iget-boolean v0, p0, Lcom/loc/bi;->d:Z

    if-nez v0, :cond_6

    :cond_5
    return-object v3

    :cond_6
    iget-boolean v0, p0, Lcom/loc/bi;->bhg:Z

    if-eqz v0, :cond_5

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "type"

    const-string/jumbo v2, "corse"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "appkey"

    iget-object v2, p0, Lcom/loc/bi;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/loc/bi;->bhc:Lcom/loc/bd;

    invoke-interface {v1, v0}, Lcom/loc/bd;->bAI(Landroid/os/Bundle;)I

    invoke-virtual {v0}, Landroid/os/Bundle;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ge v1, v2, :cond_2d

    :goto_2c
    return-object v3

    :cond_2d
    invoke-direct {p0, v0}, Lcom/loc/bi;->bAM(Landroid/os/Bundle;)Lcom/autonavi/aps/amapapi/model/AmapLoc;
    :try_end_30
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_30} :catch_32
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_30} :catch_3d

    move-result-object v0

    return-object v0

    :catch_32
    move-exception v0

    const-string/jumbo v1, "ConnectionServiceManager"

    const-string/jumbo v2, "sendCommand"

    invoke-static {v0, v1, v2}, Lcom/loc/bx;->bBD(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2c

    :catch_3d
    move-exception v0

    const-string/jumbo v1, "ConnectionServiceManager"

    const-string/jumbo v2, "sendCommand"

    invoke-static {v0, v1, v2}, Lcom/loc/bx;->bBD(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2c
.end method
