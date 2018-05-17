.class public Lu/aly/e;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field protected static final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    const-class v0, Lu/aly/e;

    .line 42
    #disallowed odex opcode
    #invoke-virtual-quick {v0}, vtable@56
    nop

    move-result-object v0

    sput-object v0, Lu/aly/e;->a:Ljava/lang/String;

    .line 46
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Ljava/lang/String;
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 196
    :try_start_1
    new-instance v0, Ljava/io/FileReader;

    const-string/jumbo v2, "/proc/cpuinfo"

    invoke-direct {v0, v2}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_9
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_9} :catch_2d

    .line 197
    if-nez v0, :cond_11

    .line 212
    :goto_b
    if-nez v1, :cond_37

    const-string/jumbo v0, ""

    .line 218
    return-object v0

    .line 199
    :cond_11
    :try_start_11
    new-instance v2, Ljava/io/BufferedReader;

    const/16 v3, 0x400

    invoke-direct {v2, v0, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    .line 200
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    .line 201
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    .line 202
    invoke-virtual {v0}, Ljava/io/FileReader;->close()V
    :try_end_22
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_22} :catch_23
    .catch Ljava/io/FileNotFoundException; {:try_start_11 .. :try_end_22} :catch_2d

    goto :goto_b

    .line 203
    :catch_23
    move-exception v0

    .line 204
    :try_start_24
    sget-object v2, Lu/aly/e;->a:Ljava/lang/String;

    const-string/jumbo v3, "Could not read from file /proc/cpuinfo"

    invoke-static {v2, v3, v0}, Lu/aly/O;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_2c
    .catch Ljava/io/FileNotFoundException; {:try_start_24 .. :try_end_2c} :catch_2d

    goto :goto_b

    .line 208
    :catch_2d
    move-exception v0

    .line 209
    sget-object v2, Lu/aly/e;->a:Ljava/lang/String;

    const-string/jumbo v3, "Could not open file /proc/cpuinfo"

    invoke-static {v2, v3, v0}, Lu/aly/O;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_b

    :cond_37
    const/16 v0, 0x3a

    .line 213
    invoke-virtual {v1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 214
    invoke-virtual {v1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 215
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 5

    .prologue
    const/4 v2, 0x0

    .line 136
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 137
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_11

    .line 140
    const/4 v0, 0x1

    return v0

    .line 138
    :cond_11
    return v2
.end method

.method public static bQA(Landroid/content/Context;)Ljava/lang/String;
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 491
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 493
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x80

    .line 492
    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 495
    if-nez v0, :cond_12

    .line 511
    :goto_11
    return-object v3

    .line 496
    :cond_12
    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string/jumbo v1, "UMENG_APPKEY"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 497
    if-nez v0, :cond_30

    .line 501
    sget-object v0, Lu/aly/e;->a:Ljava/lang/String;

    const-string/jumbo v1, "Could not read UMENG_APPKEY meta-data from AndroidManifest.xml."

    invoke-static {v0, v1}, Lu/aly/O;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_25} :catch_26

    goto :goto_11

    .line 506
    :catch_26
    move-exception v0

    .line 507
    sget-object v1, Lu/aly/e;->a:Ljava/lang/String;

    const-string/jumbo v2, "Could not read UMENG_APPKEY meta-data from AndroidManifest.xml."

    invoke-static {v1, v2, v0}, Lu/aly/O;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_11

    .line 499
    :cond_30
    :try_start_30
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_30 .. :try_end_33} :catch_26

    move-result-object v0

    return-object v0
.end method

.method public static bQB(Landroid/content/Context;)Ljava/lang/String;
    .registers 5

    .prologue
    :try_start_0
    const-string/jumbo v0, "wifi"

    .line 523
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 522
    check-cast v0, Landroid/net/wifi/WifiManager;

    const-string/jumbo v1, "android.permission.ACCESS_WIFI_STATE"

    .line 524
    invoke-static {p0, v1}, Lu/aly/e;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1e

    .line 528
    sget-object v0, Lu/aly/e;->a:Ljava/lang/String;

    const-string/jumbo v1, "Could not get mac address.[no permission android.permission.ACCESS_WIFI_STATE"

    invoke-static {v0, v1}, Lu/aly/O;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1a} :catch_27

    :goto_1a
    const-string/jumbo v0, ""

    .line 534
    return-object v0

    .line 525
    :cond_1e
    :try_start_1e
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    .line 526
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_25} :catch_27

    move-result-object v0

    return-object v0

    .line 531
    :catch_27
    move-exception v0

    .line 532
    sget-object v1, Lu/aly/e;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Could not get mac address."

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lu/aly/O;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1a
.end method

.method public static bQC(Landroid/content/Context;)[I
    .registers 5

    .prologue
    const/4 v2, -0x1

    .line 565
    :try_start_1
    new-instance v3, Landroid/util/DisplayMetrics;

    invoke-direct {v3}, Landroid/util/DisplayMetrics;-><init>()V

    const-string/jumbo v0, "window"

    .line 567
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 566
    check-cast v0, Landroid/view/WindowManager;

    .line 568
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 572
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v0, v0, 0x2000

    if-eqz v0, :cond_34

    move v0, v2

    move v1, v2

    .line 577
    :goto_22
    if-ne v1, v2, :cond_43

    .line 578
    :cond_24
    iget v1, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 579
    iget v0, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    :goto_28
    const/4 v2, 0x2

    .line 582
    new-array v2, v2, [I

    .line 584
    if-gt v1, v0, :cond_46

    const/4 v3, 0x0

    .line 588
    aput v1, v2, v3

    const/4 v1, 0x1

    .line 589
    aput v0, v2, v1

    .line 592
    :goto_33
    return-object v2

    :cond_34
    const-string/jumbo v0, "noncompatWidthPixels"

    .line 573
    invoke-static {v3, v0}, Lu/aly/e;->bQD(Ljava/lang/Object;Ljava/lang/String;)I

    move-result v1

    const-string/jumbo v0, "noncompatHeightPixels"

    .line 574
    invoke-static {v3, v0}, Lu/aly/e;->bQD(Ljava/lang/Object;Ljava/lang/String;)I

    move-result v0

    goto :goto_22

    .line 577
    :cond_43
    if-eq v0, v2, :cond_24

    goto :goto_28

    :cond_46
    const/4 v3, 0x0

    .line 585
    aput v0, v2, v3

    const/4 v0, 0x1

    .line 586
    aput v1, v2, v0
    :try_end_4c
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_4c} :catch_4d

    goto :goto_33

    .line 592
    :catch_4d
    move-exception v0

    .line 594
    sget-object v1, Lu/aly/e;->a:Ljava/lang/String;

    const-string/jumbo v2, "read resolution fail"

    invoke-static {v1, v2, v0}, Lu/aly/O;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    const/4 v0, 0x0

    .line 597
    return-object v0
.end method

.method private static bQD(Ljava/lang/Object;Ljava/lang/String;)I
    .registers 4

    .prologue
    :try_start_0
    const-class v0, Landroid/util/DisplayMetrics;

    .line 602
    invoke-virtual {v0, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 603
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 604
    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_d} :catch_f

    move-result v0

    return v0

    :catch_f
    move-exception v0

    .line 606
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, -0x1

    .line 608
    return v0
.end method

.method public static bQE(Landroid/content/Context;)Ljava/lang/String;
    .registers 4

    .prologue
    :try_start_0
    const-string/jumbo v0, "phone"

    .line 621
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 620
    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 622
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_c} :catch_e

    move-result-object v0

    .line 620
    return-object v0

    :catch_e
    move-exception v0

    .line 624
    sget-object v1, Lu/aly/e;->a:Ljava/lang/String;

    const-string/jumbo v2, "read carrier fail"

    invoke-static {v1, v2, v0}, Lu/aly/O;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    const-string/jumbo v0, "Unknown"

    .line 626
    return-object v0
.end method

.method public static bQF(Landroid/content/Context;)Ljava/lang/String;
    .registers 5

    .prologue
    const-string/jumbo v1, "Unknown"

    .line 700
    :try_start_3
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 702
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x80

    .line 701
    invoke-virtual {v0, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 704
    if-nez v0, :cond_15

    :cond_13
    move-object v0, v1

    .line 721
    :cond_14
    :goto_14
    return-object v0

    .line 704
    :cond_15
    iget-object v2, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v2, :cond_13

    .line 705
    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string/jumbo v2, "UMENG_CHANNEL"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 706
    if-nez v0, :cond_26

    move-object v0, v1

    goto :goto_14

    .line 707
    :cond_26
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 708
    if-nez v0, :cond_14

    .line 711
    sget-object v0, Lu/aly/e;->a:Ljava/lang/String;

    const-string/jumbo v2, "Could not read UMENG_CHANNEL meta-data from AndroidManifest.xml."

    invoke-static {v0, v2}, Lu/aly/O;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_34} :catch_36

    move-object v0, v1

    .line 716
    goto :goto_14

    :catch_36
    move-exception v0

    .line 717
    sget-object v2, Lu/aly/e;->a:Ljava/lang/String;

    const-string/jumbo v3, "Could not read UMENG_CHANNEL meta-data from AndroidManifest.xml."

    invoke-static {v2, v3}, Lu/aly/O;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 719
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-object v0, v1

    goto :goto_14
.end method

.method public static bQG(Landroid/content/Context;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 731
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static bQH(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 741
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 742
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 741
    return-object v0
.end method

.method public static bQt(Ljavax/microedition/khronos/opengles/GL10;)[Ljava/lang/String;
    .registers 6

    .prologue
    const/4 v4, 0x0

    const/4 v0, 0x2

    .line 172
    :try_start_2
    new-array v0, v0, [Ljava/lang/String;

    const/16 v1, 0x1f00

    .line 173
    invoke-interface {p0, v1}, Ljavax/microedition/khronos/opengles/GL10;->glGetString(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x1f01

    .line 174
    invoke-interface {p0, v2}, Ljavax/microedition/khronos/opengles/GL10;->glGetString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    .line 175
    aput-object v1, v0, v3

    const/4 v1, 0x1

    .line 176
    aput-object v2, v0, v1
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_16} :catch_17

    .line 177
    return-object v0

    :catch_17
    move-exception v0

    .line 179
    sget-object v1, Lu/aly/e;->a:Ljava/lang/String;

    const-string/jumbo v2, "Could not read gpu infor:"

    invoke-static {v1, v2, v0}, Lu/aly/O;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 180
    new-array v0, v4, [Ljava/lang/String;

    return-object v0
.end method

.method public static bQu(Landroid/content/Context;)[Ljava/lang/String;
    .registers 5

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v0, 0x2

    .line 325
    new-array v1, v0, [Ljava/lang/String;

    const-string/jumbo v0, ""

    aput-object v0, v1, v2

    const-string/jumbo v0, ""

    aput-object v0, v1, v3

    .line 328
    :try_start_f
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string/jumbo v2, "android.permission.ACCESS_NETWORK_STATE"

    .line 330
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 329
    invoke-virtual {v0, v2, v3}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_46

    const-string/jumbo v0, "connectivity"

    .line 336
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 335
    check-cast v0, Landroid/net/ConnectivityManager;

    .line 337
    if-eqz v0, :cond_4d

    const/4 v2, 0x1

    .line 342
    invoke-virtual {v0, v2}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v2

    .line 343
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v2

    sget-object v3, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-eq v2, v3, :cond_54

    const/4 v2, 0x0

    .line 348
    invoke-virtual {v0, v2}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v0

    .line 349
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v2

    sget-object v3, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-eq v2, v3, :cond_5b

    .line 359
    :goto_45
    return-object v1

    :cond_46
    const/4 v0, 0x0

    const-string/jumbo v2, ""

    .line 331
    aput-object v2, v1, v0

    .line 332
    return-object v1

    :cond_4d
    const/4 v0, 0x0

    const-string/jumbo v2, ""

    .line 338
    aput-object v2, v1, v0

    .line 339
    return-object v1

    :cond_54
    const/4 v0, 0x0

    const-string/jumbo v2, "Wi-Fi"

    .line 344
    aput-object v2, v1, v0

    .line 345
    return-object v1

    :cond_5b
    const/4 v2, 0x0

    const-string/jumbo v3, "2G/3G"

    .line 350
    aput-object v3, v1, v2

    const/4 v2, 0x1

    .line 351
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getSubtypeName()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v2
    :try_end_68
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_68} :catch_69

    .line 352
    return-object v1

    :catch_69
    move-exception v0

    .line 356
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_45
.end method

.method public static bQv(Landroid/content/Context;)Z
    .registers 4

    .prologue
    const-string/jumbo v0, "Wi-Fi"

    .line 363
    invoke-static {p0}, Lu/aly/e;->bQu(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static bQw(Landroid/content/Context;)Z
    .registers 2

    .prologue
    :try_start_0
    const-string/jumbo v0, "connectivity"

    .line 377
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 376
    check-cast v0, Landroid/net/ConnectivityManager;

    .line 378
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 379
    if-nez v0, :cond_11

    .line 382
    const/4 v0, 0x0

    return v0

    .line 380
    :cond_11
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_14} :catch_16

    move-result v0

    return v0

    .line 382
    :catch_16
    move-exception v0

    .line 384
    const/4 v0, 0x1

    return v0
.end method

.method public static bQx(Landroid/content/Context;)I
    .registers 4

    .prologue
    .line 411
    :try_start_0
    invoke-static {p0}, Lu/aly/e;->bQz(Landroid/content/Context;)Ljava/util/Locale;

    move-result-object v0

    .line 412
    invoke-static {v0}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v0

    .line 413
    if-nez v0, :cond_d

    :goto_a
    const/16 v0, 0x8

    .line 420
    return v0

    .line 414
    :cond_d
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v0

    const v1, 0x36ee80

    div-int/2addr v0, v1
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_19} :catch_1a

    return v0

    :catch_1a
    move-exception v0

    .line 417
    sget-object v1, Lu/aly/e;->a:Ljava/lang/String;

    const-string/jumbo v2, "error in getTimeZone"

    invoke-static {v1, v2, v0}, Lu/aly/O;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_a
.end method

.method public static bQy(Landroid/content/Context;)[Ljava/lang/String;
    .registers 5

    .prologue
    const/4 v0, 0x2

    .line 431
    new-array v1, v0, [Ljava/lang/String;

    .line 434
    :try_start_3
    invoke-static {p0}, Lu/aly/e;->bQz(Landroid/content/Context;)Ljava/util/Locale;

    move-result-object v0

    .line 436
    if-nez v0, :cond_1c

    :goto_9
    const/4 v0, 0x0

    .line 441
    aget-object v0, v1, v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_35

    :goto_12
    const/4 v0, 0x1

    .line 443
    aget-object v0, v1, v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3c

    .line 446
    :goto_1b
    return-object v1

    :cond_1c
    const/4 v2, 0x0

    .line 437
    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    .line 438
    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v2
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_2a} :catch_2b

    goto :goto_9

    .line 446
    :catch_2b
    move-exception v0

    .line 448
    sget-object v2, Lu/aly/e;->a:Ljava/lang/String;

    const-string/jumbo v3, "error in getLocaleInfo"

    invoke-static {v2, v3, v0}, Lu/aly/O;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 451
    return-object v1

    :cond_35
    const/4 v0, 0x0

    :try_start_36
    const-string/jumbo v2, "Unknown"

    .line 442
    aput-object v2, v1, v0

    goto :goto_12

    :cond_3c
    const/4 v0, 0x1

    const-string/jumbo v2, "Unknown"

    .line 444
    aput-object v2, v1, v0
    :try_end_42
    .catch Ljava/lang/Exception; {:try_start_36 .. :try_end_42} :catch_2b

    goto :goto_1b
.end method

.method private static bQz(Landroid/content/Context;)Ljava/util/Locale;
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 464
    :try_start_1
    new-instance v1, Landroid/content/res/Configuration;

    invoke-direct {v1}, Landroid/content/res/Configuration;-><init>()V

    .line 465
    invoke-virtual {v1}, Landroid/content/res/Configuration;->setToDefaults()V

    .line 466
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v2, v1}, Landroid/provider/Settings$System;->getConfiguration(Landroid/content/ContentResolver;Landroid/content/res/Configuration;)V

    .line 468
    if-nez v1, :cond_15

    .line 475
    :goto_12
    if-eqz v0, :cond_22

    .line 479
    :goto_14
    return-object v0

    .line 469
    :cond_15
    iget-object v0, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_17} :catch_18

    goto :goto_12

    .line 471
    :catch_18
    move-exception v1

    .line 472
    sget-object v1, Lu/aly/e;->a:Ljava/lang/String;

    const-string/jumbo v2, "fail to read user config locale"

    invoke-static {v1, v2}, Lu/aly/O;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_12

    .line 476
    :cond_22
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    goto :goto_14
.end method

.method public static c(Landroid/content/Context;)Ljava/lang/String;
    .registers 4

    .prologue
    .line 102
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 103
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 102
    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 104
    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    .line 105
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;
    :try_end_12
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_12} :catch_14

    move-result-object v0

    return-object v0

    :catch_14
    move-exception v0

    const-string/jumbo v0, ""

    .line 107
    return-object v0
.end method

.method public static d(Landroid/content/Context;)Ljava/lang/String;
    .registers 4

    .prologue
    .line 119
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 120
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 119
    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 121
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_f
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_f} :catch_10

    return-object v0

    :catch_10
    move-exception v0

    const-string/jumbo v0, ""

    .line 123
    return-object v0
.end method

.method public static f(Landroid/content/Context;)Ljava/lang/String;
    .registers 5

    .prologue
    const-string/jumbo v0, "phone"

    .line 230
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 229
    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 232
    if-eqz v0, :cond_1f

    :goto_b
    const-string/jumbo v1, ""

    :try_start_e
    const-string/jumbo v2, "android.permission.READ_PHONE_STATE"

    .line 238
    invoke-static {p0, v2}, Lu/aly/e;->a(Landroid/content/Context;Ljava/lang/String;)Z
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_14} :catch_2d

    move-result v2

    if-nez v2, :cond_28

    move-object v0, v1

    .line 245
    :goto_18
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_38

    .line 257
    :cond_1e
    return-object v0

    .line 233
    :cond_1f
    sget-object v1, Lu/aly/e;->a:Ljava/lang/String;

    const-string/jumbo v2, "No IMEI."

    invoke-static {v1, v2}, Lu/aly/O;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_b

    .line 239
    :cond_28
    :try_start_28
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_2b} :catch_2d

    move-result-object v0

    goto :goto_18

    .line 241
    :catch_2d
    move-exception v0

    .line 242
    sget-object v2, Lu/aly/e;->a:Ljava/lang/String;

    const-string/jumbo v3, "No IMEI."

    invoke-static {v2, v3, v0}, Lu/aly/O;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    move-object v0, v1

    goto :goto_18

    .line 246
    :cond_38
    sget-object v0, Lu/aly/e;->a:Ljava/lang/String;

    const-string/jumbo v1, "No IMEI."

    invoke-static {v0, v1}, Lu/aly/O;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    invoke-static {p0}, Lu/aly/e;->bQB(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 248
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 249
    sget-object v0, Lu/aly/e;->a:Ljava/lang/String;

    const-string/jumbo v1, "Failed to take mac as IMEI. Try to use Secure.ANDROID_ID instead."

    invoke-static {v0, v1}, Lu/aly/O;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "android_id"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 253
    sget-object v1, Lu/aly/e;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "getDeviceId: Secure.ANDROID_ID: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lu/aly/O;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    return-object v0
.end method

.method public static g(Landroid/content/Context;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 267
    invoke-static {p0}, Lu/aly/e;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lu/aly/bu;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
