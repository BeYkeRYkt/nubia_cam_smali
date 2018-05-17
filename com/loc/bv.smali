.class public Lcom/loc/bv;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(J)Ljava/lang/String;
    .registers 6

    const/4 v1, 0x0

    :try_start_1
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v2, "yyyyMMdd HH:mm:ss:SSS"

    sget-object v3, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    invoke-direct {v0, v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;
    :try_end_13
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_13} :catch_15

    move-result-object v0

    :goto_14
    return-object v0

    :catch_15
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    move-object v0, v1

    goto :goto_14
.end method

.method public static a(Ljava/lang/Throwable;)Ljava/lang/String;
    .registers 5

    const/4 v2, 0x0

    :try_start_1
    new-instance v3, Ljava/io/StringWriter;

    invoke-direct {v3}, Ljava/io/StringWriter;-><init>()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_6} :catch_25
    .catchall {:try_start_1 .. :try_end_6} :catchall_30

    :try_start_6
    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, v3}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_b} :catch_73
    .catchall {:try_start_6 .. :try_end_b} :catchall_6e

    :try_start_b
    invoke-virtual {p0, v1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    :goto_12
    if-nez v0, :cond_1d

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    if-nez v3, :cond_38

    :goto_1a
    if-nez v1, :cond_41

    :goto_1c
    return-object v0

    :cond_1d
    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;
    :try_end_23
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_23} :catch_76
    .catchall {:try_start_b .. :try_end_23} :catchall_71

    move-result-object v0

    goto :goto_12

    :catch_25
    move-exception v0

    move-object v1, v2

    move-object v3, v2

    :goto_28
    :try_start_28
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2b
    .catchall {:try_start_28 .. :try_end_2b} :catchall_71

    if-nez v3, :cond_4a

    :goto_2d
    if-nez v1, :cond_53

    :goto_2f
    return-object v2

    :catchall_30
    move-exception v0

    move-object v1, v2

    move-object v3, v2

    :goto_33
    if-nez v3, :cond_5c

    :goto_35
    if-nez v1, :cond_65

    :goto_37
    throw v0

    :cond_38
    :try_start_38
    invoke-virtual {v3}, Ljava/io/Writer;->close()V
    :try_end_3b
    .catch Ljava/lang/Throwable; {:try_start_38 .. :try_end_3b} :catch_3c

    goto :goto_1a

    :catch_3c
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1a

    :cond_41
    :try_start_41
    invoke-virtual {v1}, Ljava/io/PrintWriter;->close()V
    :try_end_44
    .catch Ljava/lang/Throwable; {:try_start_41 .. :try_end_44} :catch_45

    goto :goto_1c

    :catch_45
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1c

    :cond_4a
    :try_start_4a
    invoke-virtual {v3}, Ljava/io/Writer;->close()V
    :try_end_4d
    .catch Ljava/lang/Throwable; {:try_start_4a .. :try_end_4d} :catch_4e

    goto :goto_2d

    :catch_4e
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_2d

    :cond_53
    :try_start_53
    invoke-virtual {v1}, Ljava/io/PrintWriter;->close()V
    :try_end_56
    .catch Ljava/lang/Throwable; {:try_start_53 .. :try_end_56} :catch_57

    goto :goto_2f

    :catch_57
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_2f

    :cond_5c
    :try_start_5c
    invoke-virtual {v3}, Ljava/io/Writer;->close()V
    :try_end_5f
    .catch Ljava/lang/Throwable; {:try_start_5c .. :try_end_5f} :catch_60

    goto :goto_35

    :catch_60
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_35

    :cond_65
    :try_start_65
    invoke-virtual {v1}, Ljava/io/PrintWriter;->close()V
    :try_end_68
    .catch Ljava/lang/Throwable; {:try_start_65 .. :try_end_68} :catch_69

    goto :goto_37

    :catch_69
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_37

    :catchall_6e
    move-exception v0

    move-object v1, v2

    goto :goto_33

    :catchall_71
    move-exception v0

    goto :goto_33

    :catch_73
    move-exception v0

    move-object v1, v2

    goto :goto_28

    :catch_76
    move-exception v0

    goto :goto_28
.end method

.method public static a([B)Ljava/lang/String;
    .registers 3

    if-nez p0, :cond_6

    :cond_2
    const-string/jumbo v0, ""

    return-object v0

    :cond_6
    array-length v0, p0

    if-eqz v0, :cond_2

    :try_start_9
    new-instance v0, Ljava/lang/String;

    const-string/jumbo v1, "UTF-8"

    invoke-direct {v0, p0, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_11
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_9 .. :try_end_11} :catch_12

    return-object v0

    :catch_12
    move-exception v0

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method static a(Landroid/content/Context;)Ljava/security/PublicKey;
    .registers 9

    const/4 v7, 0x4

    const/16 v6, 0x55

    const/4 v5, 0x6

    const/4 v4, 0x3

    const/16 v3, 0x30

    const/16 v0, 0x2a2

    new-array v0, v0, [B

    const/4 v1, 0x0

    aput-byte v3, v0, v1

    const/4 v1, 0x1

    const/16 v2, -0x7e

    aput-byte v2, v0, v1

    const/4 v1, 0x2

    const/4 v2, 0x2

    aput-byte v2, v0, v1

    const/16 v1, -0x62

    aput-byte v1, v0, v4

    aput-byte v3, v0, v7

    const/4 v1, 0x5

    const/16 v2, -0x7e

    aput-byte v2, v0, v1

    const/4 v1, 0x2

    aput-byte v1, v0, v5

    const/4 v1, 0x7

    const/4 v2, 0x7

    aput-byte v2, v0, v1

    const/16 v1, 0x8

    const/16 v2, -0x60

    aput-byte v2, v0, v1

    const/16 v1, 0x9

    aput-byte v4, v0, v1

    const/16 v1, 0xa

    const/4 v2, 0x2

    aput-byte v2, v0, v1

    const/16 v1, 0xb

    const/4 v2, 0x1

    aput-byte v2, v0, v1

    const/16 v1, 0xc

    const/4 v2, 0x2

    aput-byte v2, v0, v1

    const/16 v1, 0xd

    const/4 v2, 0x2

    aput-byte v2, v0, v1

    const/16 v1, 0xe

    const/16 v2, 0x9

    aput-byte v2, v0, v1

    const/16 v1, 0xf

    const/4 v2, 0x0

    aput-byte v2, v0, v1

    const/16 v1, 0x10

    const/16 v2, -0x63

    aput-byte v2, v0, v1

    const/16 v1, 0x11

    const/16 v2, 0xf

    aput-byte v2, v0, v1

    const/16 v1, 0x12

    const/16 v2, 0x77

    aput-byte v2, v0, v1

    const/16 v1, 0x13

    const/16 v2, 0x3a

    aput-byte v2, v0, v1

    const/16 v1, 0x14

    const/16 v2, 0x2c

    aput-byte v2, v0, v1

    const/16 v1, 0x15

    const/16 v2, -0x13

    aput-byte v2, v0, v1

    const/16 v1, 0x16

    const/16 v2, -0x69

    aput-byte v2, v0, v1

    const/16 v1, 0x17

    const/16 v2, -0x28

    aput-byte v2, v0, v1

    const/16 v1, 0x18

    aput-byte v3, v0, v1

    const/16 v1, 0x19

    const/16 v2, 0xd

    aput-byte v2, v0, v1

    const/16 v1, 0x1a

    aput-byte v5, v0, v1

    const/16 v1, 0x1b

    const/16 v2, 0x9

    aput-byte v2, v0, v1

    const/16 v1, 0x1c

    const/16 v2, 0x2a

    aput-byte v2, v0, v1

    const/16 v1, 0x1d

    const/16 v2, -0x7a

    aput-byte v2, v0, v1

    const/16 v1, 0x1e

    const/16 v2, 0x48

    aput-byte v2, v0, v1

    const/16 v1, 0x1f

    const/16 v2, -0x7a

    aput-byte v2, v0, v1

    const/16 v1, 0x20

    const/16 v2, -0x9

    aput-byte v2, v0, v1

    const/16 v1, 0x21

    const/16 v2, 0xd

    aput-byte v2, v0, v1

    const/16 v1, 0x22

    const/4 v2, 0x1

    aput-byte v2, v0, v1

    const/16 v1, 0x23

    const/4 v2, 0x1

    aput-byte v2, v0, v1

    const/16 v1, 0x24

    const/4 v2, 0x5

    aput-byte v2, v0, v1

    const/16 v1, 0x25

    const/4 v2, 0x5

    aput-byte v2, v0, v1

    const/16 v1, 0x26

    const/4 v2, 0x0

    aput-byte v2, v0, v1

    const/16 v1, 0x27

    aput-byte v3, v0, v1

    const/16 v1, 0x28

    const/16 v2, 0x68

    aput-byte v2, v0, v1

    const/16 v1, 0x29

    const/16 v2, 0x31

    aput-byte v2, v0, v1

    const/16 v1, 0x2a

    const/16 v2, 0xb

    aput-byte v2, v0, v1

    const/16 v1, 0x2b

    aput-byte v3, v0, v1

    const/16 v1, 0x2c

    const/16 v2, 0x9

    aput-byte v2, v0, v1

    const/16 v1, 0x2d

    aput-byte v5, v0, v1

    const/16 v1, 0x2e

    aput-byte v4, v0, v1

    const/16 v1, 0x2f

    aput-byte v6, v0, v1

    aput-byte v7, v0, v3

    const/16 v1, 0x31

    aput-byte v5, v0, v1

    const/16 v1, 0x32

    const/16 v2, 0x13

    aput-byte v2, v0, v1

    const/16 v1, 0x33

    const/4 v2, 0x2

    aput-byte v2, v0, v1

    const/16 v1, 0x34

    const/16 v2, 0x43

    aput-byte v2, v0, v1

    const/16 v1, 0x35

    const/16 v2, 0x4e

    aput-byte v2, v0, v1

    const/16 v1, 0x36

    const/16 v2, 0x31

    aput-byte v2, v0, v1

    const/16 v1, 0x37

    const/16 v2, 0x13

    aput-byte v2, v0, v1

    const/16 v1, 0x38

    aput-byte v3, v0, v1

    const/16 v1, 0x39

    const/16 v2, 0x11

    aput-byte v2, v0, v1

    const/16 v1, 0x3a

    aput-byte v5, v0, v1

    const/16 v1, 0x3b

    aput-byte v4, v0, v1

    const/16 v1, 0x3c

    aput-byte v6, v0, v1

    const/16 v1, 0x3d

    aput-byte v7, v0, v1

    const/16 v1, 0x3e

    const/16 v2, 0x8

    aput-byte v2, v0, v1

    const/16 v1, 0x3f

    const/16 v2, 0xc

    aput-byte v2, v0, v1

    const/16 v1, 0x40

    const/16 v2, 0xa

    aput-byte v2, v0, v1

    const/16 v1, 0x41

    const/16 v2, 0x53

    aput-byte v2, v0, v1

    const/16 v1, 0x42

    const/16 v2, 0x6f

    aput-byte v2, v0, v1

    const/16 v1, 0x43

    const/16 v2, 0x6d

    aput-byte v2, v0, v1

    const/16 v1, 0x44

    const/16 v2, 0x65

    aput-byte v2, v0, v1

    const/16 v1, 0x45

    const/16 v2, 0x2d

    aput-byte v2, v0, v1

    const/16 v1, 0x46

    const/16 v2, 0x53

    aput-byte v2, v0, v1

    const/16 v1, 0x47

    const/16 v2, 0x74

    aput-byte v2, v0, v1

    const/16 v1, 0x48

    const/16 v2, 0x61

    aput-byte v2, v0, v1

    const/16 v1, 0x49

    const/16 v2, 0x74

    aput-byte v2, v0, v1

    const/16 v1, 0x4a

    const/16 v2, 0x65

    aput-byte v2, v0, v1

    const/16 v1, 0x4b

    const/16 v2, 0x31

    aput-byte v2, v0, v1

    const/16 v1, 0x4c

    const/16 v2, 0x10

    aput-byte v2, v0, v1

    const/16 v1, 0x4d

    aput-byte v3, v0, v1

    const/16 v1, 0x4e

    const/16 v2, 0xe

    aput-byte v2, v0, v1

    const/16 v1, 0x4f

    aput-byte v5, v0, v1

    const/16 v1, 0x50

    aput-byte v4, v0, v1

    const/16 v1, 0x51

    aput-byte v6, v0, v1

    const/16 v1, 0x52

    aput-byte v7, v0, v1

    const/16 v1, 0x53

    const/4 v2, 0x7

    aput-byte v2, v0, v1

    const/16 v1, 0x54

    const/16 v2, 0xc

    aput-byte v2, v0, v1

    const/4 v1, 0x7

    aput-byte v1, v0, v6

    const/16 v1, 0x56

    const/16 v2, 0x42

    aput-byte v2, v0, v1

    const/16 v1, 0x57

    const/16 v2, 0x65

    aput-byte v2, v0, v1

    const/16 v1, 0x58

    const/16 v2, 0x69

    aput-byte v2, v0, v1

    const/16 v1, 0x59

    const/16 v2, 0x6a

    aput-byte v2, v0, v1

    const/16 v1, 0x5a

    const/16 v2, 0x69

    aput-byte v2, v0, v1

    const/16 v1, 0x5b

    const/16 v2, 0x6e

    aput-byte v2, v0, v1

    const/16 v1, 0x5c

    const/16 v2, 0x67

    aput-byte v2, v0, v1

    const/16 v1, 0x5d

    const/16 v2, 0x31

    aput-byte v2, v0, v1

    const/16 v1, 0x5e

    const/16 v2, 0x11

    aput-byte v2, v0, v1

    const/16 v1, 0x5f

    aput-byte v3, v0, v1

    const/16 v1, 0x60

    const/16 v2, 0xf

    aput-byte v2, v0, v1

    const/16 v1, 0x61

    aput-byte v5, v0, v1

    const/16 v1, 0x62

    aput-byte v4, v0, v1

    const/16 v1, 0x63

    aput-byte v6, v0, v1

    const/16 v1, 0x64

    aput-byte v7, v0, v1

    const/16 v1, 0x65

    const/16 v2, 0xa

    aput-byte v2, v0, v1

    const/16 v1, 0x66

    const/16 v2, 0xc

    aput-byte v2, v0, v1

    const/16 v1, 0x67

    const/16 v2, 0x8

    aput-byte v2, v0, v1

    const/16 v1, 0x68

    const/16 v2, 0x41

    aput-byte v2, v0, v1

    const/16 v1, 0x69

    const/16 v2, 0x75

    aput-byte v2, v0, v1

    const/16 v1, 0x6a

    const/16 v2, 0x74

    aput-byte v2, v0, v1

    const/16 v1, 0x6b

    const/16 v2, 0x6f

    aput-byte v2, v0, v1

    const/16 v1, 0x6c

    const/16 v2, 0x6e

    aput-byte v2, v0, v1

    const/16 v1, 0x6d

    const/16 v2, 0x61

    aput-byte v2, v0, v1

    const/16 v1, 0x6e

    const/16 v2, 0x76

    aput-byte v2, v0, v1

    const/16 v1, 0x6f

    const/16 v2, 0x69

    aput-byte v2, v0, v1

    const/16 v1, 0x70

    const/16 v2, 0x31

    aput-byte v2, v0, v1

    const/16 v1, 0x71

    const/16 v2, 0x1f

    aput-byte v2, v0, v1

    const/16 v1, 0x72

    aput-byte v3, v0, v1

    const/16 v1, 0x73

    const/16 v2, 0x1d

    aput-byte v2, v0, v1

    const/16 v1, 0x74

    aput-byte v5, v0, v1

    const/16 v1, 0x75

    aput-byte v4, v0, v1

    const/16 v1, 0x76

    aput-byte v6, v0, v1

    const/16 v1, 0x77

    aput-byte v7, v0, v1

    const/16 v1, 0x78

    aput-byte v4, v0, v1

    const/16 v1, 0x79

    const/16 v2, 0xc

    aput-byte v2, v0, v1

    const/16 v1, 0x7a

    const/16 v2, 0x16

    aput-byte v2, v0, v1

    const/16 v1, 0x7b

    const/16 v2, 0x63

    aput-byte v2, v0, v1

    const/16 v1, 0x7c

    const/16 v2, 0x6f

    aput-byte v2, v0, v1

    const/16 v1, 0x7d

    const/16 v2, 0x6d

    aput-byte v2, v0, v1

    const/16 v1, 0x7e

    const/16 v2, 0x2e

    aput-byte v2, v0, v1

    const/16 v1, 0x7f

    const/16 v2, 0x61

    aput-byte v2, v0, v1

    const/16 v1, 0x80

    const/16 v2, 0x75

    aput-byte v2, v0, v1

    const/16 v1, 0x81

    const/16 v2, 0x74

    aput-byte v2, v0, v1

    const/16 v1, 0x82

    const/16 v2, 0x6f

    aput-byte v2, v0, v1

    const/16 v1, 0x83

    const/16 v2, 0x6e

    aput-byte v2, v0, v1

    const/16 v1, 0x84

    const/16 v2, 0x61

    aput-byte v2, v0, v1

    const/16 v1, 0x85

    const/16 v2, 0x76

    aput-byte v2, v0, v1

    const/16 v1, 0x86

    const/16 v2, 0x69

    aput-byte v2, v0, v1

    const/16 v1, 0x87

    const/16 v2, 0x2e

    aput-byte v2, v0, v1

    const/16 v1, 0x88

    const/16 v2, 0x61

    aput-byte v2, v0, v1

    const/16 v1, 0x89

    const/16 v2, 0x70

    aput-byte v2, v0, v1

    const/16 v1, 0x8a

    const/16 v2, 0x69

    aput-byte v2, v0, v1

    const/16 v1, 0x8b

    const/16 v2, 0x73

    aput-byte v2, v0, v1

    const/16 v1, 0x8c

    const/16 v2, 0x65

    aput-byte v2, v0, v1

    const/16 v1, 0x8d

    const/16 v2, 0x72

    aput-byte v2, v0, v1

    const/16 v1, 0x8e

    const/16 v2, 0x76

    aput-byte v2, v0, v1

    const/16 v1, 0x8f

    const/16 v2, 0x65

    aput-byte v2, v0, v1

    const/16 v1, 0x90

    const/16 v2, 0x72

    aput-byte v2, v0, v1

    const/16 v1, 0x91

    aput-byte v3, v0, v1

    const/16 v1, 0x92

    const/16 v2, 0x1e

    aput-byte v2, v0, v1

    const/16 v1, 0x93

    const/16 v2, 0x17

    aput-byte v2, v0, v1

    const/16 v1, 0x94

    const/16 v2, 0xd

    aput-byte v2, v0, v1

    const/16 v1, 0x95

    const/16 v2, 0x31

    aput-byte v2, v0, v1

    const/16 v1, 0x96

    const/16 v2, 0x33

    aput-byte v2, v0, v1

    const/16 v1, 0x97

    aput-byte v3, v0, v1

    const/16 v1, 0x98

    const/16 v2, 0x38

    aput-byte v2, v0, v1

    const/16 v1, 0x99

    const/16 v2, 0x31

    aput-byte v2, v0, v1

    const/16 v1, 0x9a

    const/16 v2, 0x35

    aput-byte v2, v0, v1

    const/16 v1, 0x9b

    aput-byte v3, v0, v1

    const/16 v1, 0x9c

    const/16 v2, 0x37

    aput-byte v2, v0, v1

    const/16 v1, 0x9d

    const/16 v2, 0x35

    aput-byte v2, v0, v1

    const/16 v1, 0x9e

    const/16 v2, 0x36

    aput-byte v2, v0, v1

    const/16 v1, 0x9f

    const/16 v2, 0x35

    aput-byte v2, v0, v1

    const/16 v1, 0xa0

    const/16 v2, 0x35

    aput-byte v2, v0, v1

    const/16 v1, 0xa1

    const/16 v2, 0x5a

    aput-byte v2, v0, v1

    const/16 v1, 0xa2

    const/16 v2, 0x17

    aput-byte v2, v0, v1

    const/16 v1, 0xa3

    const/16 v2, 0xd

    aput-byte v2, v0, v1

    const/16 v1, 0xa4

    const/16 v2, 0x32

    aput-byte v2, v0, v1

    const/16 v1, 0xa5

    const/16 v2, 0x33

    aput-byte v2, v0, v1

    const/16 v1, 0xa6

    aput-byte v3, v0, v1

    const/16 v1, 0xa7

    const/16 v2, 0x38

    aput-byte v2, v0, v1

    const/16 v1, 0xa8

    const/16 v2, 0x31

    aput-byte v2, v0, v1

    const/16 v1, 0xa9

    const/16 v2, 0x33

    aput-byte v2, v0, v1

    const/16 v1, 0xaa

    aput-byte v3, v0, v1

    const/16 v1, 0xab

    const/16 v2, 0x37

    aput-byte v2, v0, v1

    const/16 v1, 0xac

    const/16 v2, 0x35

    aput-byte v2, v0, v1

    const/16 v1, 0xad

    const/16 v2, 0x36

    aput-byte v2, v0, v1

    const/16 v1, 0xae

    const/16 v2, 0x35

    aput-byte v2, v0, v1

    const/16 v1, 0xaf

    const/16 v2, 0x35

    aput-byte v2, v0, v1

    const/16 v1, 0xb0

    const/16 v2, 0x5a

    aput-byte v2, v0, v1

    const/16 v1, 0xb1

    aput-byte v3, v0, v1

    const/16 v1, 0xb2

    const/16 v2, 0x68

    aput-byte v2, v0, v1

    const/16 v1, 0xb3

    const/16 v2, 0x31

    aput-byte v2, v0, v1

    const/16 v1, 0xb4

    const/16 v2, 0xb

    aput-byte v2, v0, v1

    const/16 v1, 0xb5

    aput-byte v3, v0, v1

    const/16 v1, 0xb6

    const/16 v2, 0x9

    aput-byte v2, v0, v1

    const/16 v1, 0xb7

    aput-byte v5, v0, v1

    const/16 v1, 0xb8

    aput-byte v4, v0, v1

    const/16 v1, 0xb9

    aput-byte v6, v0, v1

    const/16 v1, 0xba

    aput-byte v7, v0, v1

    const/16 v1, 0xbb

    aput-byte v5, v0, v1

    const/16 v1, 0xbc

    const/16 v2, 0x13

    aput-byte v2, v0, v1

    const/16 v1, 0xbd

    const/4 v2, 0x2

    aput-byte v2, v0, v1

    const/16 v1, 0xbe

    const/16 v2, 0x43

    aput-byte v2, v0, v1

    const/16 v1, 0xbf

    const/16 v2, 0x4e

    aput-byte v2, v0, v1

    const/16 v1, 0xc0

    const/16 v2, 0x31

    aput-byte v2, v0, v1

    const/16 v1, 0xc1

    const/16 v2, 0x13

    aput-byte v2, v0, v1

    const/16 v1, 0xc2

    aput-byte v3, v0, v1

    const/16 v1, 0xc3

    const/16 v2, 0x11

    aput-byte v2, v0, v1

    const/16 v1, 0xc4

    aput-byte v5, v0, v1

    const/16 v1, 0xc5

    aput-byte v4, v0, v1

    const/16 v1, 0xc6

    aput-byte v6, v0, v1

    const/16 v1, 0xc7

    aput-byte v7, v0, v1

    const/16 v1, 0xc8

    const/16 v2, 0x8

    aput-byte v2, v0, v1

    const/16 v1, 0xc9

    const/16 v2, 0xc

    aput-byte v2, v0, v1

    const/16 v1, 0xca

    const/16 v2, 0xa

    aput-byte v2, v0, v1

    const/16 v1, 0xcb

    const/16 v2, 0x53

    aput-byte v2, v0, v1

    const/16 v1, 0xcc

    const/16 v2, 0x6f

    aput-byte v2, v0, v1

    const/16 v1, 0xcd

    const/16 v2, 0x6d

    aput-byte v2, v0, v1

    const/16 v1, 0xce

    const/16 v2, 0x65

    aput-byte v2, v0, v1

    const/16 v1, 0xcf

    const/16 v2, 0x2d

    aput-byte v2, v0, v1

    const/16 v1, 0xd0

    const/16 v2, 0x53

    aput-byte v2, v0, v1

    const/16 v1, 0xd1

    const/16 v2, 0x74

    aput-byte v2, v0, v1

    const/16 v1, 0xd2

    const/16 v2, 0x61

    aput-byte v2, v0, v1

    const/16 v1, 0xd3

    const/16 v2, 0x74

    aput-byte v2, v0, v1

    const/16 v1, 0xd4

    const/16 v2, 0x65

    aput-byte v2, v0, v1

    const/16 v1, 0xd5

    const/16 v2, 0x31

    aput-byte v2, v0, v1

    const/16 v1, 0xd6

    const/16 v2, 0x10

    aput-byte v2, v0, v1

    const/16 v1, 0xd7

    aput-byte v3, v0, v1

    const/16 v1, 0xd8

    const/16 v2, 0xe

    aput-byte v2, v0, v1

    const/16 v1, 0xd9

    aput-byte v5, v0, v1

    const/16 v1, 0xda

    aput-byte v4, v0, v1

    const/16 v1, 0xdb

    aput-byte v6, v0, v1

    const/16 v1, 0xdc

    aput-byte v7, v0, v1

    const/16 v1, 0xdd

    const/4 v2, 0x7

    aput-byte v2, v0, v1

    const/16 v1, 0xde

    const/16 v2, 0xc

    aput-byte v2, v0, v1

    const/16 v1, 0xdf

    const/4 v2, 0x7

    aput-byte v2, v0, v1

    const/16 v1, 0xe0

    const/16 v2, 0x42

    aput-byte v2, v0, v1

    const/16 v1, 0xe1

    const/16 v2, 0x65

    aput-byte v2, v0, v1

    const/16 v1, 0xe2

    const/16 v2, 0x69

    aput-byte v2, v0, v1

    const/16 v1, 0xe3

    const/16 v2, 0x6a

    aput-byte v2, v0, v1

    const/16 v1, 0xe4

    const/16 v2, 0x69

    aput-byte v2, v0, v1

    const/16 v1, 0xe5

    const/16 v2, 0x6e

    aput-byte v2, v0, v1

    const/16 v1, 0xe6

    const/16 v2, 0x67

    aput-byte v2, v0, v1

    const/16 v1, 0xe7

    const/16 v2, 0x31

    aput-byte v2, v0, v1

    const/16 v1, 0xe8

    const/16 v2, 0x11

    aput-byte v2, v0, v1

    const/16 v1, 0xe9

    aput-byte v3, v0, v1

    const/16 v1, 0xea

    const/16 v2, 0xf

    aput-byte v2, v0, v1

    const/16 v1, 0xeb

    aput-byte v5, v0, v1

    const/16 v1, 0xec

    aput-byte v4, v0, v1

    const/16 v1, 0xed

    aput-byte v6, v0, v1

    const/16 v1, 0xee

    aput-byte v7, v0, v1

    const/16 v1, 0xef

    const/16 v2, 0xa

    aput-byte v2, v0, v1

    const/16 v1, 0xf0

    const/16 v2, 0xc

    aput-byte v2, v0, v1

    const/16 v1, 0xf1

    const/16 v2, 0x8

    aput-byte v2, v0, v1

    const/16 v1, 0xf2

    const/16 v2, 0x41

    aput-byte v2, v0, v1

    const/16 v1, 0xf3

    const/16 v2, 0x75

    aput-byte v2, v0, v1

    const/16 v1, 0xf4

    const/16 v2, 0x74

    aput-byte v2, v0, v1

    const/16 v1, 0xf5

    const/16 v2, 0x6f

    aput-byte v2, v0, v1

    const/16 v1, 0xf6

    const/16 v2, 0x6e

    aput-byte v2, v0, v1

    const/16 v1, 0xf7

    const/16 v2, 0x61

    aput-byte v2, v0, v1

    const/16 v1, 0xf8

    const/16 v2, 0x76

    aput-byte v2, v0, v1

    const/16 v1, 0xf9

    const/16 v2, 0x69

    aput-byte v2, v0, v1

    const/16 v1, 0xfa

    const/16 v2, 0x31

    aput-byte v2, v0, v1

    const/16 v1, 0xfb

    const/16 v2, 0x1f

    aput-byte v2, v0, v1

    const/16 v1, 0xfc

    aput-byte v3, v0, v1

    const/16 v1, 0xfd

    const/16 v2, 0x1d

    aput-byte v2, v0, v1

    const/16 v1, 0xfe

    aput-byte v5, v0, v1

    const/16 v1, 0xff

    aput-byte v4, v0, v1

    const/16 v1, 0x100

    aput-byte v6, v0, v1

    const/16 v1, 0x101

    aput-byte v7, v0, v1

    const/16 v1, 0x102

    aput-byte v4, v0, v1

    const/16 v1, 0x103

    const/16 v2, 0xc

    aput-byte v2, v0, v1

    const/16 v1, 0x104

    const/16 v2, 0x16

    aput-byte v2, v0, v1

    const/16 v1, 0x105

    const/16 v2, 0x63

    aput-byte v2, v0, v1

    const/16 v1, 0x106

    const/16 v2, 0x6f

    aput-byte v2, v0, v1

    const/16 v1, 0x107

    const/16 v2, 0x6d

    aput-byte v2, v0, v1

    const/16 v1, 0x108

    const/16 v2, 0x2e

    aput-byte v2, v0, v1

    const/16 v1, 0x109

    const/16 v2, 0x61

    aput-byte v2, v0, v1

    const/16 v1, 0x10a

    const/16 v2, 0x75

    aput-byte v2, v0, v1

    const/16 v1, 0x10b

    const/16 v2, 0x74

    aput-byte v2, v0, v1

    const/16 v1, 0x10c

    const/16 v2, 0x6f

    aput-byte v2, v0, v1

    const/16 v1, 0x10d

    const/16 v2, 0x6e

    aput-byte v2, v0, v1

    const/16 v1, 0x10e

    const/16 v2, 0x61

    aput-byte v2, v0, v1

    const/16 v1, 0x10f

    const/16 v2, 0x76

    aput-byte v2, v0, v1

    const/16 v1, 0x110

    const/16 v2, 0x69

    aput-byte v2, v0, v1

    const/16 v1, 0x111

    const/16 v2, 0x2e

    aput-byte v2, v0, v1

    const/16 v1, 0x112

    const/16 v2, 0x61

    aput-byte v2, v0, v1

    const/16 v1, 0x113

    const/16 v2, 0x70

    aput-byte v2, v0, v1

    const/16 v1, 0x114

    const/16 v2, 0x69

    aput-byte v2, v0, v1

    const/16 v1, 0x115

    const/16 v2, 0x73

    aput-byte v2, v0, v1

    const/16 v1, 0x116

    const/16 v2, 0x65

    aput-byte v2, v0, v1

    const/16 v1, 0x117

    const/16 v2, 0x72

    aput-byte v2, v0, v1

    const/16 v1, 0x118

    const/16 v2, 0x76

    aput-byte v2, v0, v1

    const/16 v1, 0x119

    const/16 v2, 0x65

    aput-byte v2, v0, v1

    const/16 v1, 0x11a

    const/16 v2, 0x72

    aput-byte v2, v0, v1

    const/16 v1, 0x11b

    aput-byte v3, v0, v1

    const/16 v1, 0x11c

    const/16 v2, -0x7f

    aput-byte v2, v0, v1

    const/16 v1, 0x11d

    const/16 v2, -0x61

    aput-byte v2, v0, v1

    const/16 v1, 0x11e

    aput-byte v3, v0, v1

    const/16 v1, 0x11f

    const/16 v2, 0xd

    aput-byte v2, v0, v1

    const/16 v1, 0x120

    aput-byte v5, v0, v1

    const/16 v1, 0x121

    const/16 v2, 0x9

    aput-byte v2, v0, v1

    const/16 v1, 0x122

    const/16 v2, 0x2a

    aput-byte v2, v0, v1

    const/16 v1, 0x123

    const/16 v2, -0x7a

    aput-byte v2, v0, v1

    const/16 v1, 0x124

    const/16 v2, 0x48

    aput-byte v2, v0, v1

    const/16 v1, 0x125

    const/16 v2, -0x7a

    aput-byte v2, v0, v1

    const/16 v1, 0x126

    const/16 v2, -0x9

    aput-byte v2, v0, v1

    const/16 v1, 0x127

    const/16 v2, 0xd

    aput-byte v2, v0, v1

    const/16 v1, 0x128

    const/4 v2, 0x1

    aput-byte v2, v0, v1

    const/16 v1, 0x129

    const/4 v2, 0x1

    aput-byte v2, v0, v1

    const/16 v1, 0x12a

    const/4 v2, 0x1

    aput-byte v2, v0, v1

    const/16 v1, 0x12b

    const/4 v2, 0x5

    aput-byte v2, v0, v1

    const/16 v1, 0x12c

    const/4 v2, 0x0

    aput-byte v2, v0, v1

    const/16 v1, 0x12d

    aput-byte v4, v0, v1

    const/16 v1, 0x12e

    const/16 v2, -0x7f

    aput-byte v2, v0, v1

    const/16 v1, 0x12f

    const/16 v2, -0x73

    aput-byte v2, v0, v1

    const/16 v1, 0x130

    const/4 v2, 0x0

    aput-byte v2, v0, v1

    const/16 v1, 0x131

    aput-byte v3, v0, v1

    const/16 v1, 0x132

    const/16 v2, -0x7f

    aput-byte v2, v0, v1

    const/16 v1, 0x133

    const/16 v2, -0x77

    aput-byte v2, v0, v1

    const/16 v1, 0x134

    const/4 v2, 0x2

    aput-byte v2, v0, v1

    const/16 v1, 0x135

    const/16 v2, -0x7f

    aput-byte v2, v0, v1

    const/16 v1, 0x136

    const/16 v2, -0x7f

    aput-byte v2, v0, v1

    const/16 v1, 0x137

    const/4 v2, 0x0

    aput-byte v2, v0, v1

    const/16 v1, 0x138

    const/16 v2, -0xf

    aput-byte v2, v0, v1

    const/16 v1, 0x139

    const/16 v2, -0x1b

    aput-byte v2, v0, v1

    const/16 v1, 0x13a

    const/16 v2, -0x80

    aput-byte v2, v0, v1

    const/16 v1, 0x13b

    const/16 v2, -0x38

    aput-byte v2, v0, v1

    const/16 v1, 0x13c

    const/16 v2, 0x76

    aput-byte v2, v0, v1

    const/16 v1, 0x13d

    const/16 v2, -0x3b

    aput-byte v2, v0, v1

    const/16 v1, 0x13e

    const/16 v2, 0x3e

    aput-byte v2, v0, v1

    const/16 v1, 0x13f

    const/16 v2, -0x7f

    aput-byte v2, v0, v1

    const/16 v1, 0x140

    const/16 v2, 0x4f

    aput-byte v2, v0, v1

    const/16 v1, 0x141

    const/16 v2, 0x7d

    aput-byte v2, v0, v1

    const/16 v1, 0x142

    const/16 v2, -0x24

    aput-byte v2, v0, v1

    const/16 v1, 0x143

    const/16 v2, 0x79

    aput-byte v2, v0, v1

    const/16 v1, 0x144

    const/4 v2, 0x0

    aput-byte v2, v0, v1

    const/16 v1, 0x145

    const/16 v2, 0x3f

    aput-byte v2, v0, v1

    const/16 v1, 0x146

    const/16 v2, -0x7d

    aput-byte v2, v0, v1

    const/16 v1, 0x147

    const/16 v2, -0x1e

    aput-byte v2, v0, v1

    const/16 v1, 0x148

    const/16 v2, 0x76

    aput-byte v2, v0, v1

    const/16 v1, 0x149

    const/4 v2, 0x5

    aput-byte v2, v0, v1

    const/16 v1, 0x14a

    const/16 v2, -0x55

    aput-byte v2, v0, v1

    const/16 v1, 0x14b

    const/16 v2, -0x79

    aput-byte v2, v0, v1

    const/16 v1, 0x14c

    const/16 v2, 0x5b

    aput-byte v2, v0, v1

    const/16 v1, 0x14d

    const/16 v2, 0x27

    aput-byte v2, v0, v1

    const/16 v1, 0x14e

    const/16 v2, 0x5a

    aput-byte v2, v0, v1

    const/16 v1, 0x14f

    const/16 v2, 0x7b

    aput-byte v2, v0, v1

    const/16 v1, 0x150

    const/16 v2, 0x48

    aput-byte v2, v0, v1

    const/16 v1, 0x151

    const/16 v2, -0x7e

    aput-byte v2, v0, v1

    const/16 v1, 0x152

    const/16 v2, -0x53

    aput-byte v2, v0, v1

    const/16 v1, 0x153

    const/16 v2, -0x29

    aput-byte v2, v0, v1

    const/16 v1, 0x154

    const/16 v2, -0x2d

    aput-byte v2, v0, v1

    const/16 v1, 0x155

    const/16 v2, -0x4d

    aput-byte v2, v0, v1

    const/16 v1, 0x156

    const/16 v2, -0x2a

    aput-byte v2, v0, v1

    const/16 v1, 0x157

    const/16 v2, -0x78

    aput-byte v2, v0, v1

    const/16 v1, 0x158

    const/16 v2, -0x51

    aput-byte v2, v0, v1

    const/16 v1, 0x159

    const/16 v2, 0x17

    aput-byte v2, v0, v1

    const/16 v1, 0x15a

    const/4 v2, -0x2

    aput-byte v2, v0, v1

    const/16 v1, 0x15b

    const/16 v2, -0x79

    aput-byte v2, v0, v1

    const/16 v1, 0x15c

    const/16 v2, -0x1d

    aput-byte v2, v0, v1

    const/16 v1, 0x15d

    const/16 v2, 0x7b

    aput-byte v2, v0, v1

    const/16 v1, 0x15e

    const/4 v2, -0x7

    aput-byte v2, v0, v1

    const/16 v1, 0x15f

    const/16 v2, 0x16

    aput-byte v2, v0, v1

    const/16 v1, 0x160

    const/16 v2, -0x72

    aput-byte v2, v0, v1

    const/16 v1, 0x161

    const/16 v2, -0x14

    aput-byte v2, v0, v1

    const/16 v1, 0x162

    const/16 v2, -0x19

    aput-byte v2, v0, v1

    const/16 v1, 0x163

    const/16 v2, 0x4a

    aput-byte v2, v0, v1

    const/16 v1, 0x164

    const/16 v2, 0x43

    aput-byte v2, v0, v1

    const/16 v1, 0x165

    const/16 v2, -0x2b

    aput-byte v2, v0, v1

    const/16 v1, 0x166

    const/16 v2, 0x41

    aput-byte v2, v0, v1

    const/16 v1, 0x167

    const/16 v2, 0x7c

    aput-byte v2, v0, v1

    const/16 v1, 0x168

    const/4 v2, -0x7

    aput-byte v2, v0, v1

    const/16 v1, 0x169

    const/16 v2, 0xb

    aput-byte v2, v0, v1

    const/16 v1, 0x16a

    const/16 v2, -0x48

    aput-byte v2, v0, v1

    const/16 v1, 0x16b

    const/16 v2, 0x26

    aput-byte v2, v0, v1

    const/16 v1, 0x16c

    const/16 v2, -0x7b

    aput-byte v2, v0, v1

    const/16 v1, 0x16d

    const/16 v2, 0x10

    aput-byte v2, v0, v1

    const/16 v1, 0x16e

    const/16 v2, -0x3a

    aput-byte v2, v0, v1

    const/16 v1, 0x16f

    const/16 v2, 0x50

    aput-byte v2, v0, v1

    const/16 v1, 0x170

    const/16 v2, 0x20

    aput-byte v2, v0, v1

    const/16 v1, 0x171

    const/16 v2, 0x3a

    aput-byte v2, v0, v1

    const/16 v1, 0x172

    const/16 v2, -0x21

    aput-byte v2, v0, v1

    const/16 v1, 0x173

    const/16 v2, 0xe

    aput-byte v2, v0, v1

    const/16 v1, 0x174

    const/16 v2, 0xb

    aput-byte v2, v0, v1

    const/16 v1, 0x175

    const/16 v2, 0x24

    aput-byte v2, v0, v1

    const/16 v1, 0x176

    const/16 v2, 0x3c

    aput-byte v2, v0, v1

    const/16 v1, 0x177

    const/16 v2, 0xd

    aput-byte v2, v0, v1

    const/16 v1, 0x178

    const/16 v2, -0x79

    aput-byte v2, v0, v1

    const/16 v1, 0x179

    const/16 v2, 0x64

    aput-byte v2, v0, v1

    const/16 v1, 0x17a

    const/16 v2, 0x69

    aput-byte v2, v0, v1

    const/16 v1, 0x17b

    const/16 v2, -0x20

    aput-byte v2, v0, v1

    const/16 v1, 0x17c

    const/16 v2, 0x7b

    aput-byte v2, v0, v1

    const/16 v1, 0x17d

    const/16 v2, -0x1f

    aput-byte v2, v0, v1

    const/16 v1, 0x17e

    const/16 v2, 0x72

    aput-byte v2, v0, v1

    const/16 v1, 0x17f

    const/16 v2, -0x65

    aput-byte v2, v0, v1

    const/16 v1, 0x180

    const/16 v2, -0x29

    aput-byte v2, v0, v1

    const/16 v1, 0x181

    const/16 v2, 0xc

    aput-byte v2, v0, v1

    const/16 v1, 0x182

    const/16 v2, 0x64

    aput-byte v2, v0, v1

    const/16 v1, 0x183

    const/16 v2, 0x21

    aput-byte v2, v0, v1

    const/16 v1, 0x184

    const/16 v2, -0x78

    aput-byte v2, v0, v1

    const/16 v1, 0x185

    const/16 v2, 0x3f

    aput-byte v2, v0, v1

    const/16 v1, 0x186

    const/16 v2, 0x7e

    aput-byte v2, v0, v1

    const/16 v1, 0x187

    const/16 v2, -0x7b

    aput-byte v2, v0, v1

    const/16 v1, 0x188

    aput-byte v3, v0, v1

    const/16 v1, 0x189

    const/16 v2, 0x37

    aput-byte v2, v0, v1

    const/16 v1, 0x18a

    const/16 v2, 0x50

    aput-byte v2, v0, v1

    const/16 v1, 0x18b

    const/16 v2, -0x74

    aput-byte v2, v0, v1

    const/16 v1, 0x18c

    const/16 v2, 0x1c

    aput-byte v2, v0, v1

    const/16 v1, 0x18d

    const/16 v2, -0xa

    aput-byte v2, v0, v1

    const/16 v1, 0x18e

    const/16 v2, 0x7d

    aput-byte v2, v0, v1

    const/16 v1, 0x18f

    const/16 v2, 0x3b

    aput-byte v2, v0, v1

    const/16 v1, 0x190

    const/16 v2, -0x29

    aput-byte v2, v0, v1

    const/16 v1, 0x191

    const/16 v2, -0x5f

    aput-byte v2, v0, v1

    const/16 v1, 0x192

    const/16 v2, -0x7e

    aput-byte v2, v0, v1

    const/16 v1, 0x193

    const/16 v2, 0x76

    aput-byte v2, v0, v1

    const/16 v1, 0x194

    const/16 v2, -0x46

    aput-byte v2, v0, v1

    const/16 v1, 0x195

    const/16 v2, 0x2b

    aput-byte v2, v0, v1

    const/16 v1, 0x196

    const/16 v2, -0x7f

    aput-byte v2, v0, v1

    const/16 v1, 0x197

    const/16 v2, 0x9

    aput-byte v2, v0, v1

    const/16 v1, 0x198

    const/16 v2, 0x5d

    aput-byte v2, v0, v1

    const/16 v1, 0x199

    const/16 v2, -0x64

    aput-byte v2, v0, v1

    const/16 v1, 0x19a

    const/16 v2, 0x51

    aput-byte v2, v0, v1

    const/16 v1, 0x19b

    const/16 v2, -0x13

    aput-byte v2, v0, v1

    const/16 v1, 0x19c

    const/16 v2, -0x72

    aput-byte v2, v0, v1

    const/16 v1, 0x19d

    const/16 v2, -0x29

    aput-byte v2, v0, v1

    const/16 v1, 0x19e

    aput-byte v6, v0, v1

    const/16 v1, 0x19f

    const/16 v2, -0x67

    aput-byte v2, v0, v1

    const/16 v1, 0x1a0

    const/16 v2, -0x25

    aput-byte v2, v0, v1

    const/16 v1, 0x1a1

    const/16 v2, -0x74

    aput-byte v2, v0, v1

    const/16 v1, 0x1a2

    const/16 v2, 0x76

    aput-byte v2, v0, v1

    const/16 v1, 0x1a3

    const/16 v2, 0x48

    aput-byte v2, v0, v1

    const/16 v1, 0x1a4

    const/16 v2, 0x56

    aput-byte v2, v0, v1

    const/16 v1, 0x1a5

    const/16 v2, 0x7d

    aput-byte v2, v0, v1

    const/16 v1, 0x1a6

    const/16 v2, -0x2b

    aput-byte v2, v0, v1

    const/16 v1, 0x1a7

    const/16 v2, -0x5c

    aput-byte v2, v0, v1

    const/16 v1, 0x1a8

    const/16 v2, -0xb

    aput-byte v2, v0, v1

    const/16 v1, 0x1a9

    const/16 v2, 0x3f

    aput-byte v2, v0, v1

    const/16 v1, 0x1aa

    const/16 v2, 0x45

    aput-byte v2, v0, v1

    const/16 v1, 0x1ab

    const/16 v2, -0x26

    aput-byte v2, v0, v1

    const/16 v1, 0x1ac

    const/16 v2, -0xa

    aput-byte v2, v0, v1

    const/16 v1, 0x1ad

    const/16 v2, -0x41

    aput-byte v2, v0, v1

    const/16 v1, 0x1ae

    const/16 v2, 0x7e

    aput-byte v2, v0, v1

    const/16 v1, 0x1af

    const/16 v2, -0x35

    aput-byte v2, v0, v1

    const/16 v1, 0x1b0

    const/16 v2, -0x73

    aput-byte v2, v0, v1

    const/16 v1, 0x1b1

    const/16 v2, 0x3c

    aput-byte v2, v0, v1

    const/16 v1, 0x1b2

    const/16 v2, 0x3e

    aput-byte v2, v0, v1

    const/16 v1, 0x1b3

    const/16 v2, -0x56

    aput-byte v2, v0, v1

    const/16 v1, 0x1b4

    const/16 v2, -0x50

    aput-byte v2, v0, v1

    const/16 v1, 0x1b5

    const/4 v2, 0x1

    aput-byte v2, v0, v1

    const/16 v1, 0x1b6

    const/16 v2, 0x27

    aput-byte v2, v0, v1

    const/16 v1, 0x1b7

    const/16 v2, 0x13

    aput-byte v2, v0, v1

    const/16 v1, 0x1b8

    const/4 v2, 0x2

    aput-byte v2, v0, v1

    const/16 v1, 0x1b9

    aput-byte v4, v0, v1

    const/16 v1, 0x1ba

    const/4 v2, 0x1

    aput-byte v2, v0, v1

    const/16 v1, 0x1bb

    const/4 v2, 0x0

    aput-byte v2, v0, v1

    const/16 v1, 0x1bc

    const/4 v2, 0x1

    aput-byte v2, v0, v1

    const/16 v1, 0x1bd

    const/16 v2, -0x5d

    aput-byte v2, v0, v1

    const/16 v1, 0x1be

    const/16 v2, 0x50

    aput-byte v2, v0, v1

    const/16 v1, 0x1bf

    aput-byte v3, v0, v1

    const/16 v1, 0x1c0

    const/16 v2, 0x4e

    aput-byte v2, v0, v1

    const/16 v1, 0x1c1

    aput-byte v3, v0, v1

    const/16 v1, 0x1c2

    const/16 v2, 0x1d

    aput-byte v2, v0, v1

    const/16 v1, 0x1c3

    aput-byte v5, v0, v1

    const/16 v1, 0x1c4

    aput-byte v4, v0, v1

    const/16 v1, 0x1c5

    aput-byte v6, v0, v1

    const/16 v1, 0x1c6

    const/16 v2, 0x1d

    aput-byte v2, v0, v1

    const/16 v1, 0x1c7

    const/16 v2, 0xe

    aput-byte v2, v0, v1

    const/16 v1, 0x1c8

    aput-byte v7, v0, v1

    const/16 v1, 0x1c9

    const/16 v2, 0x16

    aput-byte v2, v0, v1

    const/16 v1, 0x1ca

    aput-byte v7, v0, v1

    const/16 v1, 0x1cb

    const/16 v2, 0x14

    aput-byte v2, v0, v1

    const/16 v1, 0x1cc

    const/16 v2, -0x1d

    aput-byte v2, v0, v1

    const/16 v1, 0x1cd

    const/16 v2, 0x3f

    aput-byte v2, v0, v1

    const/16 v1, 0x1ce

    aput-byte v3, v0, v1

    const/16 v1, 0x1cf

    const/16 v2, -0x4f

    aput-byte v2, v0, v1

    const/16 v1, 0x1d0

    const/16 v2, -0x71

    aput-byte v2, v0, v1

    const/16 v1, 0x1d1

    const/16 v2, -0xd

    aput-byte v2, v0, v1

    const/16 v1, 0x1d2

    const/16 v2, 0x1a

    aput-byte v2, v0, v1

    const/16 v1, 0x1d3

    aput-byte v6, v0, v1

    const/16 v1, 0x1d4

    const/16 v2, 0x16

    aput-byte v2, v0, v1

    const/16 v1, 0x1d5

    const/16 v2, -0x1b

    aput-byte v2, v0, v1

    const/16 v1, 0x1d6

    const/16 v2, 0x5d

    aput-byte v2, v0, v1

    const/16 v1, 0x1d7

    const/4 v2, -0x5

    aput-byte v2, v0, v1

    const/16 v1, 0x1d8

    const/16 v2, 0x7a

    aput-byte v2, v0, v1

    const/16 v1, 0x1d9

    const/16 v2, -0x67

    aput-byte v2, v0, v1

    const/16 v1, 0x1da

    const/16 v2, -0x6d

    aput-byte v2, v0, v1

    const/16 v1, 0x1db

    const/16 v2, 0xe

    aput-byte v2, v0, v1

    const/16 v1, 0x1dc

    const/16 v2, -0x12

    aput-byte v2, v0, v1

    const/16 v1, 0x1dd

    aput-byte v5, v0, v1

    const/16 v1, 0x1de

    const/16 v2, -0xd

    aput-byte v2, v0, v1

    const/16 v1, 0x1df

    const/16 v2, -0x6d

    aput-byte v2, v0, v1

    const/16 v1, 0x1e0

    aput-byte v3, v0, v1

    const/16 v1, 0x1e1

    const/16 v2, 0x1f

    aput-byte v2, v0, v1

    const/16 v1, 0x1e2

    aput-byte v5, v0, v1

    const/16 v1, 0x1e3

    aput-byte v4, v0, v1

    const/16 v1, 0x1e4

    aput-byte v6, v0, v1

    const/16 v1, 0x1e5

    const/16 v2, 0x1d

    aput-byte v2, v0, v1

    const/16 v1, 0x1e6

    const/16 v2, 0x23

    aput-byte v2, v0, v1

    const/16 v1, 0x1e7

    aput-byte v7, v0, v1

    const/16 v1, 0x1e8

    const/16 v2, 0x18

    aput-byte v2, v0, v1

    const/16 v1, 0x1e9

    aput-byte v3, v0, v1

    const/16 v1, 0x1ea

    const/16 v2, 0x16

    aput-byte v2, v0, v1

    const/16 v1, 0x1eb

    const/16 v2, -0x80

    aput-byte v2, v0, v1

    const/16 v1, 0x1ec

    const/16 v2, 0x14

    aput-byte v2, v0, v1

    const/16 v1, 0x1ed

    const/16 v2, -0x1d

    aput-byte v2, v0, v1

    const/16 v1, 0x1ee

    const/16 v2, 0x3f

    aput-byte v2, v0, v1

    const/16 v1, 0x1ef

    aput-byte v3, v0, v1

    const/16 v1, 0x1f0

    const/16 v2, -0x4f

    aput-byte v2, v0, v1

    const/16 v1, 0x1f1

    const/16 v2, -0x71

    aput-byte v2, v0, v1

    const/16 v1, 0x1f2

    const/16 v2, -0xd

    aput-byte v2, v0, v1

    const/16 v1, 0x1f3

    const/16 v2, 0x1a

    aput-byte v2, v0, v1

    const/16 v1, 0x1f4

    aput-byte v6, v0, v1

    const/16 v1, 0x1f5

    const/16 v2, 0x16

    aput-byte v2, v0, v1

    const/16 v1, 0x1f6

    const/16 v2, -0x1b

    aput-byte v2, v0, v1

    const/16 v1, 0x1f7

    const/16 v2, 0x5d

    aput-byte v2, v0, v1

    const/16 v1, 0x1f8

    const/4 v2, -0x5

    aput-byte v2, v0, v1

    const/16 v1, 0x1f9

    const/16 v2, 0x7a

    aput-byte v2, v0, v1

    const/16 v1, 0x1fa

    const/16 v2, -0x67

    aput-byte v2, v0, v1

    const/16 v1, 0x1fb

    const/16 v2, -0x6d

    aput-byte v2, v0, v1

    const/16 v1, 0x1fc

    const/16 v2, 0xe

    aput-byte v2, v0, v1

    const/16 v1, 0x1fd

    const/16 v2, -0x12

    aput-byte v2, v0, v1

    const/16 v1, 0x1fe

    aput-byte v5, v0, v1

    const/16 v1, 0x1ff

    const/16 v2, -0xd

    aput-byte v2, v0, v1

    const/16 v1, 0x200

    const/16 v2, -0x6d

    aput-byte v2, v0, v1

    const/16 v1, 0x201

    aput-byte v3, v0, v1

    const/16 v1, 0x202

    const/16 v2, 0xc

    aput-byte v2, v0, v1

    const/16 v1, 0x203

    aput-byte v5, v0, v1

    const/16 v1, 0x204

    aput-byte v4, v0, v1

    const/16 v1, 0x205

    aput-byte v6, v0, v1

    const/16 v1, 0x206

    const/16 v2, 0x1d

    aput-byte v2, v0, v1

    const/16 v1, 0x207

    const/16 v2, 0x13

    aput-byte v2, v0, v1

    const/16 v1, 0x208

    aput-byte v7, v0, v1

    const/16 v1, 0x209

    const/4 v2, 0x5

    aput-byte v2, v0, v1

    const/16 v1, 0x20a

    aput-byte v3, v0, v1

    const/16 v1, 0x20b

    aput-byte v4, v0, v1

    const/16 v1, 0x20c

    const/4 v2, 0x1

    aput-byte v2, v0, v1

    const/16 v1, 0x20d

    const/4 v2, 0x1

    aput-byte v2, v0, v1

    const/16 v1, 0x20e

    const/4 v2, -0x1

    aput-byte v2, v0, v1

    const/16 v1, 0x20f

    aput-byte v3, v0, v1

    const/16 v1, 0x210

    const/16 v2, 0xd

    aput-byte v2, v0, v1

    const/16 v1, 0x211

    aput-byte v5, v0, v1

    const/16 v1, 0x212

    const/16 v2, 0x9

    aput-byte v2, v0, v1

    const/16 v1, 0x213

    const/16 v2, 0x2a

    aput-byte v2, v0, v1

    const/16 v1, 0x214

    const/16 v2, -0x7a

    aput-byte v2, v0, v1

    const/16 v1, 0x215

    const/16 v2, 0x48

    aput-byte v2, v0, v1

    const/16 v1, 0x216

    const/16 v2, -0x7a

    aput-byte v2, v0, v1

    const/16 v1, 0x217

    const/16 v2, -0x9

    aput-byte v2, v0, v1

    const/16 v1, 0x218

    const/16 v2, 0xd

    aput-byte v2, v0, v1

    const/16 v1, 0x219

    const/4 v2, 0x1

    aput-byte v2, v0, v1

    const/16 v1, 0x21a

    const/4 v2, 0x1

    aput-byte v2, v0, v1

    const/16 v1, 0x21b

    const/4 v2, 0x5

    aput-byte v2, v0, v1

    const/16 v1, 0x21c

    const/4 v2, 0x5

    aput-byte v2, v0, v1

    const/16 v1, 0x21d

    const/4 v2, 0x0

    aput-byte v2, v0, v1

    const/16 v1, 0x21e

    aput-byte v4, v0, v1

    const/16 v1, 0x21f

    const/16 v2, -0x7f

    aput-byte v2, v0, v1

    const/16 v1, 0x220

    const/16 v2, -0x7f

    aput-byte v2, v0, v1

    const/16 v1, 0x221

    const/4 v2, 0x0

    aput-byte v2, v0, v1

    const/16 v1, 0x222

    const/16 v2, -0x20

    aput-byte v2, v0, v1

    const/16 v1, 0x223

    const/16 v2, -0x4a

    aput-byte v2, v0, v1

    const/16 v1, 0x224

    const/16 v2, 0x37

    aput-byte v2, v0, v1

    const/16 v1, 0x225

    const/16 v2, -0x7d

    aput-byte v2, v0, v1

    const/16 v1, 0x226

    const/16 v2, -0x3a

    aput-byte v2, v0, v1

    const/16 v1, 0x227

    const/16 v2, -0x80

    aput-byte v2, v0, v1

    const/16 v1, 0x228

    const/16 v2, 0xf

    aput-byte v2, v0, v1

    const/16 v1, 0x229

    const/16 v2, -0x3e

    aput-byte v2, v0, v1

    const/16 v1, 0x22a

    const/16 v2, 0x64

    aput-byte v2, v0, v1

    const/16 v1, 0x22b

    const/16 v2, -0x3c

    aput-byte v2, v0, v1

    const/16 v1, 0x22c

    aput-byte v4, v0, v1

    const/16 v1, 0x22d

    const/16 v2, -0x56

    aput-byte v2, v0, v1

    const/16 v1, 0x22e

    const/16 v2, 0x51

    aput-byte v2, v0, v1

    const/16 v1, 0x22f

    const/16 v2, 0x70

    aput-byte v2, v0, v1

    const/16 v1, 0x230

    const/16 v2, -0x3d

    aput-byte v2, v0, v1

    const/16 v1, 0x231

    const/16 v2, -0x38

    aput-byte v2, v0, v1

    const/16 v1, 0x232

    const/16 v2, -0x45

    aput-byte v2, v0, v1

    const/16 v1, 0x233

    const/16 v2, -0x7e

    aput-byte v2, v0, v1

    const/16 v1, 0x234

    const/16 v2, 0x8

    aput-byte v2, v0, v1

    const/16 v1, 0x235

    const/16 v2, 0x63

    aput-byte v2, v0, v1

    const/16 v1, 0x236

    const/16 v2, -0x64

    aput-byte v2, v0, v1

    const/16 v1, 0x237

    const/16 v2, -0x26

    aput-byte v2, v0, v1

    const/16 v1, 0x238

    const/16 v2, -0x6c

    aput-byte v2, v0, v1

    const/16 v1, 0x239

    const/16 v2, -0x38

    aput-byte v2, v0, v1

    const/16 v1, 0x23a

    const/16 v2, -0x7a

    aput-byte v2, v0, v1

    const/16 v1, 0x23b

    const/16 v2, 0x7d

    aput-byte v2, v0, v1

    const/16 v1, 0x23c

    const/16 v2, 0x13

    aput-byte v2, v0, v1

    const/16 v1, 0x23d

    const/16 v2, -0x40

    aput-byte v2, v0, v1

    const/16 v1, 0x23e

    const/16 v2, -0x3d

    aput-byte v2, v0, v1

    const/16 v1, 0x23f

    const/16 v2, 0x5a

    aput-byte v2, v0, v1

    const/16 v1, 0x240

    aput-byte v6, v0, v1

    const/16 v1, 0x241

    const/16 v2, -0x2f

    aput-byte v2, v0, v1

    const/16 v1, 0x242

    const/4 v2, -0x8

    aput-byte v2, v0, v1

    const/16 v1, 0x243

    const/16 v2, -0x7b

    aput-byte v2, v0, v1

    const/16 v1, 0x244

    const/16 v2, -0x67

    aput-byte v2, v0, v1

    const/16 v1, 0x245

    const/16 v2, 0x69

    aput-byte v2, v0, v1

    const/16 v1, 0x246

    const/16 v2, 0x4d

    aput-byte v2, v0, v1

    const/16 v1, 0x247

    const/16 v2, -0x20

    aput-byte v2, v0, v1

    const/16 v1, 0x248

    const/16 v2, -0x41

    aput-byte v2, v0, v1

    const/16 v1, 0x249

    const/16 v2, -0x3e

    aput-byte v2, v0, v1

    const/16 v1, 0x24a

    const/16 v2, -0x1c

    aput-byte v2, v0, v1

    const/16 v1, 0x24b

    const/16 v2, 0x43

    aput-byte v2, v0, v1

    const/16 v1, 0x24c

    const/16 v2, -0x1c

    aput-byte v2, v0, v1

    const/16 v1, 0x24d

    const/16 v2, -0x4e

    aput-byte v2, v0, v1

    const/16 v1, 0x24e

    const/16 v2, 0x74

    aput-byte v2, v0, v1

    const/16 v1, 0x24f

    const/16 v2, -0x31

    aput-byte v2, v0, v1

    const/16 v1, 0x250

    const/16 v2, 0x78

    aput-byte v2, v0, v1

    const/16 v1, 0x251

    const/4 v2, -0x2

    aput-byte v2, v0, v1

    const/16 v1, 0x252

    const/16 v2, 0x21

    aput-byte v2, v0, v1

    const/16 v1, 0x253

    const/16 v2, 0xd

    aput-byte v2, v0, v1

    const/16 v1, 0x254

    const/16 v2, 0x2f

    aput-byte v2, v0, v1

    const/16 v1, 0x255

    const/16 v2, 0x2e

    aput-byte v2, v0, v1

    const/16 v1, 0x256

    const/4 v2, -0x5

    aput-byte v2, v0, v1

    const/16 v1, 0x257

    const/16 v2, -0x70

    aput-byte v2, v0, v1

    const/16 v1, 0x258

    aput-byte v4, v0, v1

    const/16 v1, 0x259

    const/16 v2, -0x65

    aput-byte v2, v0, v1

    const/16 v1, 0x25a

    const/16 v2, -0x7d

    aput-byte v2, v0, v1

    const/16 v1, 0x25b

    const/16 v2, -0x73

    aput-byte v2, v0, v1

    const/16 v1, 0x25c

    const/16 v2, 0x5c

    aput-byte v2, v0, v1

    const/16 v1, 0x25d

    const/16 v2, -0x7c

    aput-byte v2, v0, v1

    const/16 v1, 0x25e

    const/16 v2, 0x3a

    aput-byte v2, v0, v1

    const/16 v1, 0x25f

    const/16 v2, 0x50

    aput-byte v2, v0, v1

    const/16 v1, 0x260

    const/16 v2, 0x6b

    aput-byte v2, v0, v1

    const/16 v1, 0x261

    const/16 v2, -0x43

    aput-byte v2, v0, v1

    const/16 v1, 0x262

    const/16 v2, 0x52

    aput-byte v2, v0, v1

    const/16 v1, 0x263

    aput-byte v5, v0, v1

    const/16 v1, 0x264

    const/16 v2, -0x3f

    aput-byte v2, v0, v1

    const/16 v1, 0x265

    const/16 v2, 0x27

    aput-byte v2, v0, v1

    const/16 v1, 0x266

    const/16 v2, -0x5a

    aput-byte v2, v0, v1

    const/16 v1, 0x267

    const/4 v2, -0x1

    aput-byte v2, v0, v1

    const/16 v1, 0x268

    aput-byte v6, v0, v1

    const/16 v1, 0x269

    const/16 v2, -0x3a

    aput-byte v2, v0, v1

    const/16 v1, 0x26a

    const/16 v2, 0x52

    aput-byte v2, v0, v1

    const/16 v1, 0x26b

    const/16 v2, -0x73

    aput-byte v2, v0, v1

    const/16 v1, 0x26c

    const/16 v2, 0x77

    aput-byte v2, v0, v1

    const/16 v1, 0x26d

    const/16 v2, 0xd

    aput-byte v2, v0, v1

    const/16 v1, 0x26e

    const/4 v2, -0x4

    aput-byte v2, v0, v1

    const/16 v1, 0x26f

    const/16 v2, -0x20

    aput-byte v2, v0, v1

    const/16 v1, 0x270

    const/4 v2, 0x0

    aput-byte v2, v0, v1

    const/16 v1, 0x271

    const/16 v2, -0x62

    aput-byte v2, v0, v1

    const/16 v1, 0x272

    const/16 v2, 0x64

    aput-byte v2, v0, v1

    const/16 v1, 0x273

    const/16 v2, -0x29

    aput-byte v2, v0, v1

    const/16 v1, 0x274

    const/16 v2, 0x5e

    aput-byte v2, v0, v1

    const/16 v1, 0x275

    const/16 v2, -0x4b

    aput-byte v2, v0, v1

    const/16 v1, 0x276

    const/16 v2, 0x4b

    aput-byte v2, v0, v1

    const/16 v1, 0x277

    const/16 v2, -0x67

    aput-byte v2, v0, v1

    const/16 v1, 0x278

    const/16 v2, 0x7e

    aput-byte v2, v0, v1

    const/16 v1, 0x279

    const/16 v2, -0x50

    aput-byte v2, v0, v1

    const/16 v1, 0x27a

    aput-byte v6, v0, v1

    const/16 v1, 0x27b

    const/16 v2, 0x28

    aput-byte v2, v0, v1

    const/16 v1, 0x27c

    const/16 v2, -0x1b

    aput-byte v2, v0, v1

    const/16 v1, 0x27d

    const/16 v2, 0x3c

    aput-byte v2, v0, v1

    const/16 v1, 0x27e

    const/16 v2, 0x69

    aput-byte v2, v0, v1

    const/16 v1, 0x27f

    const/16 v2, 0x1c

    aput-byte v2, v0, v1

    const/16 v1, 0x280

    const/16 v2, -0x1b

    aput-byte v2, v0, v1

    const/16 v1, 0x281

    const/16 v2, -0x15

    aput-byte v2, v0, v1

    const/16 v1, 0x282

    const/16 v2, -0xf

    aput-byte v2, v0, v1

    const/16 v1, 0x283

    const/16 v2, -0x62

    aput-byte v2, v0, v1

    const/16 v1, 0x284

    const/16 v2, 0x67

    aput-byte v2, v0, v1

    const/16 v1, 0x285

    const/16 v2, -0x58

    aput-byte v2, v0, v1

    const/16 v1, 0x286

    const/16 v2, -0x6d

    aput-byte v2, v0, v1

    const/16 v1, 0x287

    const/16 v2, 0x23

    aput-byte v2, v0, v1

    const/16 v1, 0x288

    const/16 v2, -0x77

    aput-byte v2, v0, v1

    const/16 v1, 0x289

    const/16 v2, -0x1b

    aput-byte v2, v0, v1

    const/16 v1, 0x28a

    const/16 v2, -0x1a

    aput-byte v2, v0, v1

    const/16 v1, 0x28b

    const/16 v2, -0x7a

    aput-byte v2, v0, v1

    const/16 v1, 0x28c

    const/16 v2, 0x71

    aput-byte v2, v0, v1

    const/16 v1, 0x28d

    const/16 v2, 0x3f

    aput-byte v2, v0, v1

    const/16 v1, 0x28e

    const/16 v2, 0x23

    aput-byte v2, v0, v1

    const/16 v1, 0x28f

    const/16 v2, -0x21

    aput-byte v2, v0, v1

    const/16 v1, 0x290

    const/16 v2, 0x46

    aput-byte v2, v0, v1

    const/16 v1, 0x291

    const/16 v2, 0x17

    aput-byte v2, v0, v1

    const/16 v1, 0x292

    const/16 v2, 0x21

    aput-byte v2, v0, v1

    const/16 v1, 0x293

    const/16 v2, -0x17

    aput-byte v2, v0, v1

    const/16 v1, 0x294

    const/16 v2, 0x42

    aput-byte v2, v0, v1

    const/16 v1, 0x295

    const/16 v2, 0x6c

    aput-byte v2, v0, v1

    const/16 v1, 0x296

    const/16 v2, 0x38

    aput-byte v2, v0, v1

    const/16 v1, 0x297

    const/16 v2, 0x70

    aput-byte v2, v0, v1

    const/16 v1, 0x298

    const/16 v2, 0x2e

    aput-byte v2, v0, v1

    const/16 v1, 0x299

    const/16 v2, -0x55

    aput-byte v2, v0, v1

    const/16 v1, 0x29a

    const/16 v2, -0x7b

    aput-byte v2, v0, v1

    const/16 v1, 0x29b

    const/16 v2, -0x7b

    aput-byte v2, v0, v1

    const/16 v1, 0x29c

    const/16 v2, 0x21

    aput-byte v2, v0, v1

    const/16 v1, 0x29d

    const/16 v2, 0x76

    aput-byte v2, v0, v1

    const/16 v1, 0x29e

    const/16 v2, 0x1b

    aput-byte v2, v0, v1

    const/16 v1, 0x29f

    const/16 v2, 0x60

    aput-byte v2, v0, v1

    const/16 v1, 0x2a0

    const/4 v2, -0x7

    aput-byte v2, v0, v1

    const/16 v1, 0x2a1

    const/16 v2, -0x67

    aput-byte v2, v0, v1

    const/4 v2, 0x0

    :try_start_eb7
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_ebc
    .catch Ljava/lang/Throwable; {:try_start_eb7 .. :try_end_ebc} :catch_eea
    .catchall {:try_start_eb7 .. :try_end_ebc} :catchall_ef3

    :try_start_ebc
    const-string/jumbo v0, "X.509"

    invoke-static {v0}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v0

    const-string/jumbo v2, "RSA"

    invoke-static {v2}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v2

    invoke-virtual {v0, v1}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v0

    if-nez v0, :cond_ed4

    :cond_ed0
    if-nez v1, :cond_ef8

    :goto_ed2
    const/4 v0, 0x0

    return-object v0

    :cond_ed4
    if-eqz v2, :cond_ed0

    new-instance v3, Ljava/security/spec/X509EncodedKeySpec;

    invoke-virtual {v0}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v0

    invoke-interface {v0}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    invoke-virtual {v2, v3}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;
    :try_end_ee6
    .catch Ljava/lang/Throwable; {:try_start_ebc .. :try_end_ee6} :catch_f1e
    .catchall {:try_start_ebc .. :try_end_ee6} :catchall_f1c

    move-result-object v0

    if-nez v1, :cond_f01

    :goto_ee9
    return-object v0

    :catch_eea
    move-exception v0

    move-object v1, v2

    :goto_eec
    :try_start_eec
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_eef
    .catchall {:try_start_eec .. :try_end_eef} :catchall_f1c

    if-nez v1, :cond_f0a

    :goto_ef1
    const/4 v0, 0x0

    return-object v0

    :catchall_ef3
    move-exception v0

    move-object v1, v2

    :goto_ef5
    if-nez v1, :cond_f13

    :goto_ef7
    throw v0

    :cond_ef8
    :try_start_ef8
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_efb
    .catch Ljava/lang/Throwable; {:try_start_ef8 .. :try_end_efb} :catch_efc

    goto :goto_ed2

    :catch_efc
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_ed2

    :cond_f01
    :try_start_f01
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_f04
    .catch Ljava/lang/Throwable; {:try_start_f01 .. :try_end_f04} :catch_f05

    goto :goto_ee9

    :catch_f05
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_ee9

    :cond_f0a
    :try_start_f0a
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_f0d
    .catch Ljava/lang/Throwable; {:try_start_f0a .. :try_end_f0d} :catch_f0e

    goto :goto_ef1

    :catch_f0e
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_ef1

    :cond_f13
    :try_start_f13
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_f16
    .catch Ljava/lang/Throwable; {:try_start_f13 .. :try_end_f16} :catch_f17

    goto :goto_ef7

    :catch_f17
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_ef7

    :catchall_f1c
    move-exception v0

    goto :goto_ef5

    :catch_f1e
    move-exception v0

    goto :goto_eec
.end method

.method public static a()[B
    .registers 5

    const/4 v0, 0x0

    :try_start_1
    const-string/jumbo v1, "16,16,18,77,15,911,121,77,121,911,38,77,911,99,86,67,611,96,48,77,84,911,38,67,021,301,86,67,611,98,48,77,511,77,48,97,511,58,48,97,511,84,501,87,511,96,48,77,221,911,38,77,121,37,86,67,25,301,86,67,021,96,86,67,021,701,86,67,35,56,86,67,611,37,221,87"

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->reverse()Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v1, v2

    new-array v3, v1, [B

    move v1, v0

    :goto_1c
    array-length v4, v2

    if-lt v1, v4, :cond_48

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v3}, Ljava/lang/String;-><init>([B)V

    invoke-static {v1}, Lcom/loc/cz;->b(Ljava/lang/String;)[B

    move-result-object v1

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>([B)V

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->reverse()Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    new-array v2, v2, [B

    :goto_44
    array-length v3, v1

    if-lt v0, v3, :cond_54

    return-object v2

    :cond_48
    aget-object v4, v2, v1

    invoke-static {v4}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;)B

    move-result v4

    int-to-byte v4, v4

    aput-byte v4, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1c

    :cond_54
    aget-object v3, v1, v0

    invoke-static {v3}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;)B

    move-result v3

    int-to-byte v3, v3

    aput-byte v3, v2, v0
    :try_end_5d
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_5d} :catch_60

    add-int/lit8 v0, v0, 0x1

    goto :goto_44

    :catch_60
    move-exception v0

    const-string/jumbo v1, "Utils"

    const-string/jumbo v2, "getIV"

    invoke-static {v0, v1, v2}, Lcom/loc/s;->bwk(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x10

    new-array v0, v0, [B

    return-object v0
.end method

.method public static a(Ljava/lang/String;)[B
    .registers 3

    const/4 v1, 0x0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_f

    :try_start_7
    const-string/jumbo v0, "UTF-8"

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_d
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_7 .. :try_end_d} :catch_12

    move-result-object v0

    return-object v0

    :cond_f
    new-array v0, v1, [B

    return-object v0

    :catch_12
    move-exception v0

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    return-object v0
.end method

.method public static b(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    const/4 v0, 0x0

    if-eqz p0, :cond_26

    invoke-static {p0}, Lcom/loc/bv;->a(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Lcom/loc/cz;->b([B)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    rem-int/lit8 v2, v2, 0x1a

    add-int/lit8 v2, v2, 0x41

    int-to-char v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_26
    return-object v0
.end method

.method public static b([B)[B
    .registers 4

    :try_start_0
    invoke-static {p0}, Lcom/loc/bv;->bBy([B)[B
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_3} :catch_5

    move-result-object v0

    return-object v0

    :catch_5
    move-exception v0

    const-string/jumbo v1, "Utils"

    const-string/jumbo v2, "gZip"

    invoke-static {v0, v1, v2}, Lcom/loc/s;->bwk(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    new-array v0, v0, [B

    return-object v0
.end method

.method public static bBp(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)V
    .registers 4

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    int-to-byte v0, v0

    invoke-static {p1}, Lcom/loc/bv;->a(Ljava/lang/String;)[B

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/loc/bv;->bBq(Ljava/io/ByteArrayOutputStream;B[B)V

    return-void
.end method

.method public static bBq(Ljava/io/ByteArrayOutputStream;B[B)V
    .registers 9

    const/16 v5, 0xff

    const/4 v1, 0x1

    const/4 v0, 0x0

    const/4 v2, 0x1

    :try_start_5
    new-array v2, v2, [B

    const/4 v3, 0x0

    int-to-byte v4, p1

    aput-byte v4, v2, v3

    invoke-virtual {p0, v2}, Ljava/io/ByteArrayOutputStream;->write([B)V

    if-gtz p1, :cond_1d

    move v2, v0

    :goto_11
    and-int/lit16 v3, p1, 0xff

    if-lt v3, v5, :cond_1f

    :goto_15
    and-int/2addr v0, v2

    if-nez v0, :cond_21

    and-int/lit16 v0, p1, 0xff

    if-eq v0, v5, :cond_30

    :goto_1c
    return-void

    :cond_1d
    move v2, v1

    goto :goto_11

    :cond_1f
    move v0, v1

    goto :goto_15

    :cond_21
    invoke-virtual {p0, p2}, Ljava/io/ByteArrayOutputStream;->write([B)V
    :try_end_24
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_24} :catch_25

    goto :goto_1c

    :catch_25
    move-exception v0

    const-string/jumbo v1, "Utils"

    const-string/jumbo v2, "writeField"

    invoke-static {v0, v1, v2}, Lcom/loc/s;->bwk(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1c

    :cond_30
    const/4 v0, 0x0

    const/16 v1, 0xff

    :try_start_33
    invoke-virtual {p0, p2, v0, v1}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_36
    .catch Ljava/io/IOException; {:try_start_33 .. :try_end_36} :catch_25

    goto :goto_1c
.end method

.method public static bBr(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_11

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/loc/cz;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_11
    const-string/jumbo v0, ""

    return-object v0
.end method

.method public static bBs(Lorg/json/JSONObject;Ljava/lang/String;)Z
    .registers 4

    const/4 v0, 0x0

    if-nez p0, :cond_4

    :cond_3
    :goto_3
    return v0

    :cond_4
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v0, 0x1

    goto :goto_3
.end method

.method public static bBt(Ljava/util/Map;)Ljava/lang/String;
    .registers 8

    const/4 v1, 0x0

    const/4 v3, 0x0

    if-nez p0, :cond_5

    :cond_4
    return-object v1

    :cond_5
    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v0

    if-eqz v0, :cond_4

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v2, 0x1

    :try_start_11
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_19
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z
    :try_end_1c
    .catch Ljava/lang/Throwable; {:try_start_11 .. :try_end_1c} :catch_6c

    move-result v0

    if-nez v0, :cond_24

    :goto_1f
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_24
    :try_start_24
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    if-nez v2, :cond_50

    const-string/jumbo v1, "&"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string/jumbo v6, "="

    invoke-virtual {v1, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move v0, v2

    :goto_4e
    move v2, v0

    goto :goto_19

    :cond_50
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string/jumbo v2, "="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_6a
    .catch Ljava/lang/Throwable; {:try_start_24 .. :try_end_6a} :catch_6c

    move v0, v3

    goto :goto_4e

    :catch_6c
    move-exception v0

    const-string/jumbo v1, "Utils"

    const-string/jumbo v2, "assembleParams"

    invoke-static {v0, v1, v2}, Lcom/loc/s;->bwk(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1f
.end method

.method public static bBu([B)[B
    .registers 7

    const/4 v2, 0x0

    if-nez p0, :cond_4

    :cond_3
    return-object v2

    :cond_4
    array-length v0, p0

    if-eqz v0, :cond_3

    :try_start_7
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_c} :catch_2e
    .catchall {:try_start_7 .. :try_end_c} :catchall_4d

    :try_start_c
    new-instance v3, Ljava/util/zip/ZipOutputStream;

    invoke-direct {v3, v1}, Ljava/util/zip/ZipOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_11
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_11} :catch_a5
    .catchall {:try_start_c .. :try_end_11} :catchall_a0

    :try_start_11
    new-instance v0, Ljava/util/zip/ZipEntry;

    const-string/jumbo v4, "log"

    invoke-direct {v0, v4}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    invoke-virtual {v3, p0}, Ljava/util/zip/ZipOutputStream;->write([B)V

    invoke-virtual {v3}, Ljava/util/zip/ZipOutputStream;->closeEntry()V

    invoke-virtual {v3}, Ljava/util/zip/ZipOutputStream;->finish()V

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_28
    .catch Ljava/lang/Throwable; {:try_start_11 .. :try_end_28} :catch_a8
    .catchall {:try_start_11 .. :try_end_28} :catchall_a3

    move-result-object v2

    if-nez v3, :cond_55

    :goto_2b
    if-nez v1, :cond_64

    :cond_2d
    :goto_2d
    return-object v2

    :catch_2e
    move-exception v0

    move-object v1, v2

    move-object v3, v2

    :goto_31
    :try_start_31
    const-string/jumbo v4, "Utils"

    const-string/jumbo v5, "zip"

    invoke-static {v0, v4, v5}, Lcom/loc/s;->bwk(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3a
    .catchall {:try_start_31 .. :try_end_3a} :catchall_a3

    if-nez v3, :cond_73

    :goto_3c
    if-eqz v1, :cond_2d

    :try_start_3e
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_41
    .catch Ljava/lang/Throwable; {:try_start_3e .. :try_end_41} :catch_42

    goto :goto_2d

    :catch_42
    move-exception v0

    const-string/jumbo v1, "Utils"

    const-string/jumbo v3, "zip2"

    invoke-static {v0, v1, v3}, Lcom/loc/s;->bwk(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2d

    :catchall_4d
    move-exception v0

    move-object v1, v2

    move-object v3, v2

    :goto_50
    if-nez v3, :cond_82

    :goto_52
    if-nez v1, :cond_91

    :goto_54
    throw v0

    :cond_55
    :try_start_55
    invoke-virtual {v3}, Ljava/util/zip/ZipOutputStream;->close()V
    :try_end_58
    .catch Ljava/lang/Throwable; {:try_start_55 .. :try_end_58} :catch_59

    goto :goto_2b

    :catch_59
    move-exception v0

    const-string/jumbo v3, "Utils"

    const-string/jumbo v4, "zip1"

    invoke-static {v0, v3, v4}, Lcom/loc/s;->bwk(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2b

    :cond_64
    :try_start_64
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_67
    .catch Ljava/lang/Throwable; {:try_start_64 .. :try_end_67} :catch_68

    goto :goto_2d

    :catch_68
    move-exception v0

    const-string/jumbo v1, "Utils"

    const-string/jumbo v3, "zip2"

    invoke-static {v0, v1, v3}, Lcom/loc/s;->bwk(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2d

    :cond_73
    :try_start_73
    invoke-virtual {v3}, Ljava/util/zip/ZipOutputStream;->close()V
    :try_end_76
    .catch Ljava/lang/Throwable; {:try_start_73 .. :try_end_76} :catch_77

    goto :goto_3c

    :catch_77
    move-exception v0

    const-string/jumbo v3, "Utils"

    const-string/jumbo v4, "zip1"

    invoke-static {v0, v3, v4}, Lcom/loc/s;->bwk(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3c

    :cond_82
    :try_start_82
    invoke-virtual {v3}, Ljava/util/zip/ZipOutputStream;->close()V
    :try_end_85
    .catch Ljava/lang/Throwable; {:try_start_82 .. :try_end_85} :catch_86

    goto :goto_52

    :catch_86
    move-exception v2

    const-string/jumbo v3, "Utils"

    const-string/jumbo v4, "zip1"

    invoke-static {v2, v3, v4}, Lcom/loc/s;->bwk(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_52

    :cond_91
    :try_start_91
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_94
    .catch Ljava/lang/Throwable; {:try_start_91 .. :try_end_94} :catch_95

    goto :goto_54

    :catch_95
    move-exception v1

    const-string/jumbo v2, "Utils"

    const-string/jumbo v3, "zip2"

    invoke-static {v1, v2, v3}, Lcom/loc/s;->bwk(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_54

    :catchall_a0
    move-exception v0

    move-object v3, v2

    goto :goto_50

    :catchall_a3
    move-exception v0

    goto :goto_50

    :catch_a5
    move-exception v0

    move-object v3, v2

    goto :goto_31

    :catch_a8
    move-exception v0

    goto :goto_31
.end method

.method static bBv([B)Ljava/lang/String;
    .registers 4

    :try_start_0
    invoke-static {p0}, Lcom/loc/bv;->bBx([B)Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_3} :catch_5

    move-result-object v0

    return-object v0

    :catch_5
    move-exception v0

    const-string/jumbo v1, "Utils"

    const-string/jumbo v2, "HexString"

    invoke-static {v0, v1, v2}, Lcom/loc/s;->bwk(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method static bBw([B)Ljava/lang/String;
    .registers 2

    :try_start_0
    invoke-static {p0}, Lcom/loc/bv;->bBx([B)Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_3} :catch_5

    move-result-object v0

    return-object v0

    :catch_5
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 v0, 0x0

    return-object v0
.end method

.method public static bBx([B)Ljava/lang/String;
    .registers 6

    const/4 v0, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p0, :cond_11

    const/4 v0, 0x0

    :goto_9
    array-length v1, p0

    if-lt v0, v1, :cond_12

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_11
    return-object v0

    :cond_12
    aget-byte v1, p0, v0

    and-int/lit16 v1, v1, 0xff

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_27

    :goto_21
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    :cond_27
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v4, 0x30

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_21
.end method

.method private static bBy([B)[B
    .registers 5

    const/4 v2, 0x0

    if-eqz p0, :cond_1c

    :try_start_3
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_8} :catch_1d
    .catchall {:try_start_3 .. :try_end_8} :catchall_3f

    :try_start_8
    new-instance v1, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {v1, v3}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_d} :catch_48
    .catchall {:try_start_8 .. :try_end_d} :catchall_43

    :try_start_d
    invoke-virtual {v1, p0}, Ljava/util/zip/GZIPOutputStream;->write([B)V

    invoke-virtual {v1}, Ljava/util/zip/GZIPOutputStream;->finish()V

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_16
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_16} :catch_4c
    .catchall {:try_start_d .. :try_end_16} :catchall_46

    move-result-object v0

    if-nez v1, :cond_27

    :goto_19
    if-nez v3, :cond_2d

    :goto_1b
    return-object v0

    :cond_1c
    return-object v2

    :catch_1d
    move-exception v0

    move-object v1, v2

    :goto_1f
    :try_start_1f
    throw v0
    :try_end_20
    .catchall {:try_start_1f .. :try_end_20} :catchall_20

    :catchall_20
    move-exception v0

    move-object v3, v2

    :goto_22
    if-nez v1, :cond_33

    :goto_24
    if-nez v3, :cond_39

    :goto_26
    throw v0

    :cond_27
    :try_start_27
    invoke-virtual {v1}, Ljava/util/zip/GZIPOutputStream;->close()V
    :try_end_2a
    .catch Ljava/lang/Throwable; {:try_start_27 .. :try_end_2a} :catch_2b

    goto :goto_19

    :catch_2b
    move-exception v0

    throw v0

    :cond_2d
    :try_start_2d
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_30
    .catch Ljava/lang/Throwable; {:try_start_2d .. :try_end_30} :catch_31

    goto :goto_1b

    :catch_31
    move-exception v0

    throw v0

    :cond_33
    :try_start_33
    invoke-virtual {v1}, Ljava/util/zip/GZIPOutputStream;->close()V
    :try_end_36
    .catch Ljava/lang/Throwable; {:try_start_33 .. :try_end_36} :catch_37

    goto :goto_24

    :catch_37
    move-exception v0

    throw v0

    :cond_39
    :try_start_39
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_3c
    .catch Ljava/lang/Throwable; {:try_start_39 .. :try_end_3c} :catch_3d

    goto :goto_26

    :catch_3d
    move-exception v0

    throw v0

    :catchall_3f
    move-exception v0

    move-object v1, v2

    move-object v3, v2

    goto :goto_22

    :catchall_43
    move-exception v0

    move-object v1, v2

    goto :goto_22

    :catchall_46
    move-exception v0

    goto :goto_22

    :catch_48
    move-exception v0

    move-object v1, v2

    move-object v2, v3

    goto :goto_1f

    :catch_4c
    move-exception v0

    move-object v2, v3

    goto :goto_1f
.end method
