.class public Lcom/android/videomaker/service/MakerService;
.super Landroid/app/Service;
.source "SourceFile"


# static fields
.field private static aJZ:Landroid/location/Location;

.field private static volatile aKa:Z

.field private static final aKc:Lcom/android/videomaker/service/b;

.field private static volatile aKd:Z

.field private static final aKe:Ljava/util/List;

.field private static final aKf:Ljava/util/Map;

.field private static aKh:Lcom/android/videomaker/b/b;


# instance fields
.field private aKb:Landroid/os/Handler;

.field private final aKg:Ljava/lang/Runnable;

.field private aKi:Lcom/android/videomaker/service/a;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 71
    new-instance v0, Lcom/android/videomaker/service/b;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Lcom/android/videomaker/service/b;-><init>(I)V

    sput-object v0, Lcom/android/videomaker/service/MakerService;->aKc:Lcom/android/videomaker/service/b;

    .line 74
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/videomaker/service/MakerService;->aKe:Ljava/util/List;

    .line 75
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/videomaker/service/MakerService;->aKf:Ljava/util/Map;

    .line 77
    const/4 v0, 0x0

    sput-object v0, Lcom/android/videomaker/service/MakerService;->aKh:Lcom/android/videomaker/b/b;

    .line 79
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/videomaker/service/MakerService;->aKd:Z

    .line 32
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 32
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 83
    new-instance v0, Lcom/android/videomaker/service/d;

    invoke-direct {v0, p0}, Lcom/android/videomaker/service/d;-><init>(Lcom/android/videomaker/service/MakerService;)V

    iput-object v0, p0, Lcom/android/videomaker/service/MakerService;->aKg:Ljava/lang/Runnable;

    .line 32
    return-void
.end method

.method static synthetic aZA()Z
    .registers 1

    sget-boolean v0, Lcom/android/videomaker/service/MakerService;->aKa:Z

    return v0
.end method

.method static synthetic aZB()Lcom/android/videomaker/service/b;
    .registers 1

    sget-object v0, Lcom/android/videomaker/service/MakerService;->aKc:Lcom/android/videomaker/service/b;

    return-object v0
.end method

.method static synthetic aZC()Ljava/util/List;
    .registers 1

    sget-object v0, Lcom/android/videomaker/service/MakerService;->aKe:Ljava/util/List;

    return-object v0
.end method

.method static synthetic aZD()Ljava/util/Map;
    .registers 1

    sget-object v0, Lcom/android/videomaker/service/MakerService;->aKf:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic aZE()Lcom/android/videomaker/b/b;
    .registers 1

    sget-object v0, Lcom/android/videomaker/service/MakerService;->aKh:Lcom/android/videomaker/b/b;

    return-object v0
.end method

.method static synthetic aZF(Lcom/android/videomaker/service/MakerService;)Lcom/android/videomaker/service/a;
    .registers 2

    iget-object v0, p0, Lcom/android/videomaker/service/MakerService;->aKi:Lcom/android/videomaker/service/a;

    return-object v0
.end method

.method static synthetic aZG(Lcom/android/videomaker/service/MakerService;Ljava/lang/String;)Landroid/net/Uri;
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/videomaker/service/MakerService;->aZt(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method static synthetic aZH(Lcom/android/videomaker/service/MakerService;Landroid/content/Intent;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/videomaker/service/MakerService;->aZu(Landroid/content/Intent;)V

    return-void
.end method

.method public static aZb(Landroid/content/Context;Ljava/lang/String;III)V
    .registers 8

    .prologue
    .line 288
    const-string/jumbo v0, "MakerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "exportVideoEditor:filename="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " height="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " bitrate="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 289
    sget-object v0, Lcom/android/videomaker/service/MakerService;->aKc:Lcom/android/videomaker/service/b;

    const-class v1, Lcom/android/videomaker/service/MakerService;

    invoke-virtual {v0, p0, v1}, Lcom/android/videomaker/service/b;->aZJ(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 290
    const-string/jumbo v1, "op"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 291
    const-string/jumbo v1, "filename"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 292
    const-string/jumbo v1, "height"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 293
    const-string/jumbo v1, "bitrate"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 294
    const-string/jumbo v1, "fps"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 296
    invoke-static {p0, v0}, Lcom/android/videomaker/service/MakerService;->aZz(Landroid/content/Context;Landroid/content/Intent;)V

    .line 287
    return-void
.end method

.method public static aZc(Lcom/android/videomaker/service/c;)V
    .registers 4

    .prologue
    .line 172
    const-string/jumbo v0, "MakerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "registerListener listener: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    sget-object v0, Lcom/android/videomaker/service/MakerService;->aKe:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 171
    return-void
.end method

.method public static aZd(Landroid/location/Location;)V
    .registers 1

    .prologue
    .line 955
    sput-object p0, Lcom/android/videomaker/service/MakerService;->aJZ:Landroid/location/Location;

    .line 954
    return-void
.end method

.method public static aZe(Landroid/content/Context;)V
    .registers 4

    .prologue
    .line 242
    sget-object v0, Lcom/android/videomaker/service/MakerService;->aKc:Lcom/android/videomaker/service/b;

    const-class v1, Lcom/android/videomaker/service/MakerService;

    invoke-virtual {v0, p0, v1}, Lcom/android/videomaker/service/b;->aZJ(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 243
    const-string/jumbo v1, "op"

    const/4 v2, 0x6

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 245
    invoke-static {p0, v0}, Lcom/android/videomaker/service/MakerService;->aZz(Landroid/content/Context;Landroid/content/Intent;)V

    .line 241
    return-void
.end method

.method public static aZf(Lcom/android/videomaker/service/c;)V
    .registers 2

    .prologue
    .line 177
    sget-object v0, Lcom/android/videomaker/service/MakerService;->aKe:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 176
    return-void
.end method

.method public static aZg(Landroid/content/Context;)V
    .registers 4

    .prologue
    .line 186
    const-string/jumbo v0, "MakerService"

    const-string/jumbo v1, "createVideoEditor"

    invoke-static {v0, v1}, Lcom/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    sget-object v0, Lcom/android/videomaker/service/MakerService;->aKc:Lcom/android/videomaker/service/b;

    const-class v1, Lcom/android/videomaker/service/MakerService;

    invoke-virtual {v0, p0, v1}, Lcom/android/videomaker/service/b;->aZJ(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 188
    const-string/jumbo v1, "op"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 190
    invoke-static {p0, v0}, Lcom/android/videomaker/service/MakerService;->aZz(Landroid/content/Context;Landroid/content/Intent;)V

    .line 185
    return-void
.end method

.method public static aZh(Landroid/content/Context;[Ljava/lang/String;J)V
    .registers 8

    .prologue
    .line 249
    const-string/jumbo v0, "MakerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "addMediaItemImages "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v2, p1, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " | durationMs="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    sget-object v0, Lcom/android/videomaker/service/MakerService;->aKc:Lcom/android/videomaker/service/b;

    const-class v1, Lcom/android/videomaker/service/MakerService;

    invoke-virtual {v0, p0, v1}, Lcom/android/videomaker/service/b;->aZJ(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 251
    const-string/jumbo v1, "MakerService"

    const-string/jumbo v2, "addMediaItemImages"

    invoke-static {v1, v2}, Lcom/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    const-string/jumbo v1, "op"

    const/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 253
    const-string/jumbo v1, "images"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 256
    invoke-static {p0, v0}, Lcom/android/videomaker/service/MakerService;->aZz(Landroid/content/Context;Landroid/content/Intent;)V

    .line 248
    return-void
.end method

.method public static aZi(Landroid/content/Context;Landroid/net/Uri;)V
    .registers 5

    .prologue
    .line 273
    const-string/jumbo v0, "MakerService"

    const-string/jumbo v1, "removeAudioTrack:"

    invoke-static {v0, v1}, Lcom/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 274
    sget-object v0, Lcom/android/videomaker/service/MakerService;->aKc:Lcom/android/videomaker/service/b;

    const-class v1, Lcom/android/videomaker/service/MakerService;

    invoke-virtual {v0, p0, v1}, Lcom/android/videomaker/service/b;->aZJ(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 275
    const-string/jumbo v1, "op"

    const/16 v2, 0x1f8

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 276
    invoke-static {p0, v0}, Lcom/android/videomaker/service/MakerService;->aZz(Landroid/content/Context;Landroid/content/Intent;)V

    .line 272
    return-void
.end method

.method public static aZj(Z)V
    .registers 4

    .prologue
    .line 559
    const-string/jumbo v0, "MakerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setInteruptImagesFlag: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 560
    sput-boolean p0, Lcom/android/videomaker/service/MakerService;->aKd:Z

    .line 558
    return-void
.end method

.method public static aZk()I
    .registers 1

    .prologue
    .line 564
    sget-object v0, Lcom/android/videomaker/service/MakerService;->aKh:Lcom/android/videomaker/b/b;

    if-eqz v0, :cond_b

    .line 565
    sget-object v0, Lcom/android/videomaker/service/MakerService;->aKh:Lcom/android/videomaker/b/b;

    invoke-virtual {v0}, Lcom/android/videomaker/b/b;->aYs()I

    move-result v0

    return v0

    .line 567
    :cond_b
    const/4 v0, -0x1

    return v0
.end method

.method public static aZl(Landroid/content/Context;Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 548
    const-string/jumbo v0, "MakerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "cancelExportVideoEditor="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 549
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/videomaker/service/MakerService;->aKa:Z

    .line 550
    sget-object v0, Lcom/android/videomaker/service/MakerService;->aKf:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 551
    sget-object v0, Lcom/android/videomaker/service/MakerService;->aKc:Lcom/android/videomaker/service/b;

    const-class v1, Lcom/android/videomaker/service/MakerService;

    invoke-virtual {v0, p0, v1}, Lcom/android/videomaker/service/b;->aZJ(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 552
    const-string/jumbo v1, "op"

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 553
    const-string/jumbo v1, "filename"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 555
    invoke-static {p0, v0}, Lcom/android/videomaker/service/MakerService;->aZz(Landroid/content/Context;Landroid/content/Intent;)V

    .line 547
    return-void
.end method

.method public static aZm(Landroid/content/Context;Landroid/net/Uri;Z)V
    .registers 6

    .prologue
    .line 203
    const-string/jumbo v0, "MakerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "addAudioTrackUri uri"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    sget-object v0, Lcom/android/videomaker/service/MakerService;->aKc:Lcom/android/videomaker/service/b;

    const-class v1, Lcom/android/videomaker/service/MakerService;

    invoke-virtual {v0, p0, v1}, Lcom/android/videomaker/service/b;->aZJ(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 205
    const-string/jumbo v1, "op"

    const/16 v2, 0x1f6

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 206
    const-string/jumbo v1, "filename"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 207
    const-string/jumbo v1, "loop"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 209
    invoke-static {p0, v0}, Lcom/android/videomaker/service/MakerService;->aZz(Landroid/content/Context;Landroid/content/Intent;)V

    .line 202
    return-void
.end method

.method public static aZn(Landroid/content/Context;Ljava/lang/String;Z)V
    .registers 6

    .prologue
    .line 212
    const-string/jumbo v0, "MakerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "addAudioTrackNoUri "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    sget-object v0, Lcom/android/videomaker/service/MakerService;->aKc:Lcom/android/videomaker/service/b;

    const-class v1, Lcom/android/videomaker/service/MakerService;

    invoke-virtual {v0, p0, v1}, Lcom/android/videomaker/service/b;->aZJ(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 214
    const-string/jumbo v1, "op"

    const/16 v2, 0x1f7

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 215
    const-string/jumbo v1, "filename"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 216
    const-string/jumbo v1, "loop"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 218
    invoke-static {p0, v0}, Lcom/android/videomaker/service/MakerService;->aZz(Landroid/content/Context;Landroid/content/Intent;)V

    .line 211
    return-void
.end method

.method public static aZo(Landroid/content/Context;Ljava/util/ArrayList;Z)V
    .registers 6

    .prologue
    .line 222
    if-nez p1, :cond_2b

    .line 223
    const-string/jumbo v0, "MakerService"

    const-string/jumbo v1, "addAudioTrackRecord size: null"

    invoke-static {v0, v1}, Lcom/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    :goto_b
    sget-object v0, Lcom/android/videomaker/service/MakerService;->aKc:Lcom/android/videomaker/service/b;

    const-class v1, Lcom/android/videomaker/service/MakerService;

    invoke-virtual {v0, p0, v1}, Lcom/android/videomaker/service/b;->aZJ(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 228
    const-string/jumbo v1, "op"

    const/16 v2, 0x1fa

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 229
    const-string/jumbo v1, "filename"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 230
    const-string/jumbo v1, "loop"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 232
    invoke-static {p0, v0}, Lcom/android/videomaker/service/MakerService;->aZz(Landroid/content/Context;Landroid/content/Intent;)V

    .line 221
    return-void

    .line 225
    :cond_2b
    const-string/jumbo v0, "MakerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "addAudioTrackRecord size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_b
.end method

.method public static aZp(Landroid/content/Context;Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 267
    const-string/jumbo v0, "MakerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "removeAudioTrack: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 268
    sget-object v0, Lcom/android/videomaker/service/MakerService;->aKc:Lcom/android/videomaker/service/b;

    const-class v1, Lcom/android/videomaker/service/MakerService;

    invoke-virtual {v0, p0, v1}, Lcom/android/videomaker/service/b;->aZJ(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 269
    const-string/jumbo v1, "op"

    const/16 v2, 0x1f9

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 270
    invoke-static {p0, v0}, Lcom/android/videomaker/service/MakerService;->aZz(Landroid/content/Context;Landroid/content/Intent;)V

    .line 266
    return-void
.end method

.method private aZq(Landroid/content/Intent;)V
    .registers 4

    .prologue
    .line 693
    iget-object v0, p0, Lcom/android/videomaker/service/MakerService;->aKb:Landroid/os/Handler;

    new-instance v1, Lcom/android/videomaker/service/i;

    invoke-direct {v1, p0, p1}, Lcom/android/videomaker/service/i;-><init>(Lcom/android/videomaker/service/MakerService;Landroid/content/Intent;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 692
    return-void
.end method

.method private aZr(Landroid/content/Intent;Ljava/lang/Exception;Ljava/lang/Object;Ljava/lang/Object;Z)V
    .registers 14

    .prologue
    .line 312
    iget-object v7, p0, Lcom/android/videomaker/service/MakerService;->aKb:Landroid/os/Handler;

    new-instance v0, Lcom/android/videomaker/service/e;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p3

    move-object v4, p4

    move-object v5, p2

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/videomaker/service/e;-><init>(Lcom/android/videomaker/service/MakerService;Landroid/content/Intent;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Exception;Z)V

    invoke-virtual {v7, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 311
    return-void
.end method

.method private aZs(Landroid/content/Intent;)V
    .registers 3

    .prologue
    .line 594
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/videomaker/service/MakerService;->aKa:Z

    .line 595
    new-instance v0, Lcom/android/videomaker/service/f;

    invoke-direct {v0, p0, p1}, Lcom/android/videomaker/service/f;-><init>(Lcom/android/videomaker/service/MakerService;Landroid/content/Intent;)V

    invoke-virtual {v0}, Lcom/android/videomaker/service/f;->start()V

    .line 593
    return-void
.end method

.method private aZt(Ljava/lang/String;)Landroid/net/Uri;
    .registers 7

    .prologue
    .line 672
    new-instance v0, Landroid/content/ContentValues;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroid/content/ContentValues;-><init>(I)V

    .line 673
    const-string/jumbo v1, "mime_type"

    const-string/jumbo v2, "video/mp4"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 674
    const-string/jumbo v1, "_data"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 675
    sget-object v1, Lcom/android/videomaker/service/MakerService;->aJZ:Landroid/location/Location;

    if-eqz v1, :cond_39

    .line 676
    const-string/jumbo v1, "longitude"

    sget-object v2, Lcom/android/videomaker/service/MakerService;->aJZ:Landroid/location/Location;

    invoke-virtual {v2}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 677
    const-string/jumbo v1, "latitude"

    sget-object v2, Lcom/android/videomaker/service/MakerService;->aJZ:Landroid/location/Location;

    invoke-virtual {v2}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 680
    :cond_39
    invoke-virtual {p0}, Lcom/android/videomaker/service/MakerService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    .line 682
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.MEDIA_SCANNER_SCAN_FILE"

    .line 683
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "file://"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 682
    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v1}, Lcom/android/videomaker/service/MakerService;->sendBroadcast(Landroid/content/Intent;)V

    .line 684
    return-object v0
.end method

.method private aZu(Landroid/content/Intent;)V
    .registers 6

    .prologue
    .line 327
    sget-object v0, Lcom/android/videomaker/service/MakerService;->aKf:Ljava/util/Map;

    const-string/jumbo v1, "rid"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 328
    const-string/jumbo v0, "MakerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "finalizeRequest mPendingIntents.size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/videomaker/service/MakerService;->aKf:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 329
    sget-object v0, Lcom/android/videomaker/service/MakerService;->aKf:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-nez v0, :cond_4d

    .line 331
    iget-object v0, p0, Lcom/android/videomaker/service/MakerService;->aKb:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/videomaker/service/MakerService;->aKg:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 336
    const-string/jumbo v0, "MakerService"

    const-string/jumbo v1, "finalizeRequest"

    invoke-static {v0, v1}, Lcom/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 337
    iget-object v0, p0, Lcom/android/videomaker/service/MakerService;->aKb:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/videomaker/service/MakerService;->aKg:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 326
    :cond_4d
    return-void
.end method

.method private aZv(Landroid/content/Intent;)V
    .registers 6

    .prologue
    .line 342
    sget-object v0, Lcom/android/videomaker/service/MakerService;->aKf:Ljava/util/Map;

    const-string/jumbo v1, "rid"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 344
    iget-object v0, p0, Lcom/android/videomaker/service/MakerService;->aKb:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/videomaker/service/MakerService;->aKg:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 345
    iget-object v0, p0, Lcom/android/videomaker/service/MakerService;->aKb:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/videomaker/service/MakerService;->aKg:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 341
    return-void
.end method

.method private declared-synchronized aZy()V
    .registers 3

    .prologue
    monitor-enter p0

    .line 584
    :try_start_1
    sget-object v0, Lcom/android/videomaker/service/MakerService;->aKh:Lcom/android/videomaker/b/b;

    if-eqz v0, :cond_19

    .line 585
    const-string/jumbo v0, "MakerService"

    const-string/jumbo v1, "releaseEditor: "

    invoke-static {v0, v1}, Lcom/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 586
    sget-object v0, Lcom/android/videomaker/service/MakerService;->aKh:Lcom/android/videomaker/b/b;

    invoke-virtual {v0}, Lcom/android/videomaker/b/b;->aYt()V

    .line 587
    const/4 v0, 0x0

    sput-object v0, Lcom/android/videomaker/service/MakerService;->aKh:Lcom/android/videomaker/b/b;

    .line 589
    invoke-static {}, Ljava/lang/System;->gc()V
    :try_end_19
    .catchall {:try_start_1 .. :try_end_19} :catchall_1b

    :cond_19
    monitor-exit p0

    .line 583
    return-void

    :catchall_1b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private static aZz(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 4

    .prologue
    .line 164
    const-string/jumbo v0, "MakerService"

    const-string/jumbo v1, "startCommand"

    invoke-static {v0, v1}, Lcom/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    const/16 v0, 0x8

    invoke-static {v0}, Lcom/android/videomaker/a/c;->aYp(I)Ljava/lang/String;

    move-result-object v0

    .line 166
    const-string/jumbo v1, "rid"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 167
    sget-object v1, Lcom/android/videomaker/service/MakerService;->aKf:Ljava/util/Map;

    invoke-interface {v1, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    invoke-virtual {p0, p1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 163
    return-void
.end method


# virtual methods
.method public aZw(Landroid/content/Intent;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Exception;Z)V
    .registers 12

    .prologue
    .line 362
    const-string/jumbo v0, "op"

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 363
    sparse-switch v0, :sswitch_data_202

    .line 529
    const-string/jumbo v0, "MakerService"

    const-string/jumbo v1, "default"

    invoke-static {v0, v1}, Lcom/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 530
    if-eqz p5, :cond_19

    .line 531
    invoke-direct {p0, p1}, Lcom/android/videomaker/service/MakerService;->aZu(Landroid/content/Intent;)V

    .line 537
    :cond_19
    :goto_19
    if-eqz p5, :cond_20

    .line 538
    sget-object v0, Lcom/android/videomaker/service/MakerService;->aKc:Lcom/android/videomaker/service/b;

    invoke-virtual {v0, p1}, Lcom/android/videomaker/service/b;->aZK(Landroid/content/Intent;)V

    .line 361
    :cond_20
    return-void

    .line 365
    :sswitch_21
    const-string/jumbo v0, "MakerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "OP_VIDEO_EDITOR_CREATE  finalize:  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 366
    if-eqz p5, :cond_40

    .line 367
    invoke-direct {p0, p1}, Lcom/android/videomaker/service/MakerService;->aZu(Landroid/content/Intent;)V

    .line 369
    :cond_40
    const-string/jumbo v0, "MakerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, " OP_VIDEO_EDITOR_CREATE  callback  mListeners: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/videomaker/service/MakerService;->aKe:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 370
    sget-object v0, Lcom/android/videomaker/service/MakerService;->aKe:Ljava/util/List;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_66
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_19

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/videomaker/service/c;

    .line 371
    const-string/jumbo v2, "MakerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onVideogeneratorcreated callbaack  listener: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 372
    invoke-virtual {v0, p4}, Lcom/android/videomaker/service/c;->aZM(Ljava/lang/Exception;)V

    goto :goto_66

    .line 377
    :sswitch_90
    const-string/jumbo v0, "MakerService"

    const-string/jumbo v1, "OP_VIDEO_EDITOR_SET_ASPECT_RATIO"

    invoke-static {v0, v1}, Lcom/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_19

    .line 387
    :sswitch_9a
    const-string/jumbo v0, "MakerService"

    const-string/jumbo v1, "OP_MEDIA_ITEM_ADD_IMAGES"

    invoke-static {v0, v1}, Lcom/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 388
    if-eqz p5, :cond_a8

    .line 389
    invoke-direct {p0, p1}, Lcom/android/videomaker/service/MakerService;->aZu(Landroid/content/Intent;)V

    .line 391
    :cond_a8
    sget-object v0, Lcom/android/videomaker/service/MakerService;->aKe:Ljava/util/List;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_ae
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_19

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/videomaker/service/c;

    .line 392
    invoke-virtual {v0}, Lcom/android/videomaker/service/c;->aZN()V

    goto :goto_ae

    .line 399
    :sswitch_be
    const-string/jumbo v0, "MakerService"

    const-string/jumbo v1, "OP_MEDIA_ITEM_REMOVE_ALL"

    invoke-static {v0, v1}, Lcom/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 400
    if-eqz p5, :cond_19

    .line 401
    invoke-direct {p0, p1}, Lcom/android/videomaker/service/MakerService;->aZu(Landroid/content/Intent;)V

    goto/16 :goto_19

    .line 407
    :sswitch_ce
    const-string/jumbo v0, "MakerService"

    const-string/jumbo v1, "OP_AUDIO_TRACK_ADD_URI"

    invoke-static {v0, v1}, Lcom/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 408
    if-eqz p5, :cond_dc

    .line 409
    invoke-direct {p0, p1}, Lcom/android/videomaker/service/MakerService;->aZu(Landroid/content/Intent;)V

    .line 411
    :cond_dc
    check-cast p2, Ljava/lang/String;

    .line 412
    sget-object v0, Lcom/android/videomaker/service/MakerService;->aKe:Ljava/util/List;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_e4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_19

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/videomaker/service/c;

    .line 413
    invoke-virtual {v0, p2, p4}, Lcom/android/videomaker/service/c;->aZO(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_e4

    .line 420
    :sswitch_f4
    const-string/jumbo v0, "MakerService"

    const-string/jumbo v1, "OP_AUDIO_TRACK_ADD_NO_URI"

    invoke-static {v0, v1}, Lcom/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 421
    if-eqz p5, :cond_102

    .line 422
    invoke-direct {p0, p1}, Lcom/android/videomaker/service/MakerService;->aZu(Landroid/content/Intent;)V

    .line 424
    :cond_102
    sget-object v0, Lcom/android/videomaker/service/MakerService;->aKe:Ljava/util/List;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_108
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_19

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/videomaker/service/c;

    .line 425
    const/4 v2, 0x0

    invoke-virtual {v0, v2, p4}, Lcom/android/videomaker/service/c;->aZO(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_108

    .line 433
    :sswitch_119
    const-string/jumbo v0, "MakerService"

    const-string/jumbo v1, "OP_AUDIO_TRACK_REMOVE"

    invoke-static {v0, v1}, Lcom/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 434
    if-eqz p5, :cond_19

    .line 435
    invoke-direct {p0, p1}, Lcom/android/videomaker/service/MakerService;->aZu(Landroid/content/Intent;)V

    goto/16 :goto_19

    .line 442
    :sswitch_129
    const-string/jumbo v0, "MakerService"

    const-string/jumbo v1, "OP_AUDIO_TRACK_REMOVE_ALL"

    invoke-static {v0, v1}, Lcom/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 443
    if-eqz p5, :cond_19

    .line 444
    invoke-direct {p0, p1}, Lcom/android/videomaker/service/MakerService;->aZu(Landroid/content/Intent;)V

    goto/16 :goto_19

    .line 451
    :sswitch_139
    const-string/jumbo v0, "MakerService"

    const-string/jumbo v1, "OP_VIDEO_EDITOR_EXPORT"

    invoke-static {v0, v1}, Lcom/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_19

    .line 459
    :sswitch_144
    const-string/jumbo v0, "MakerService"

    const-string/jumbo v1, "OP_VIDEO_EDITOR_CANCEL_EXPORT"

    invoke-static {v0, v1}, Lcom/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 460
    if-eqz p5, :cond_152

    .line 461
    invoke-direct {p0, p1}, Lcom/android/videomaker/service/MakerService;->aZu(Landroid/content/Intent;)V

    .line 464
    :cond_152
    sget-object v0, Lcom/android/videomaker/service/MakerService;->aKe:Ljava/util/List;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_158
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_19

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/videomaker/service/c;

    .line 465
    const-string/jumbo v2, "filename"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/videomaker/service/c;->aZP(Ljava/lang/String;)V

    goto :goto_158

    .line 472
    :sswitch_16f
    const-string/jumbo v0, "MakerService"

    const-string/jumbo v1, "OP_VIDEO_EDITOR_EXPORT_STATUS"

    invoke-static {v0, v1}, Lcom/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 475
    if-eqz p5, :cond_17d

    .line 476
    invoke-direct {p0, p1}, Lcom/android/videomaker/service/MakerService;->aZu(Landroid/content/Intent;)V

    .line 479
    :cond_17d
    const-string/jumbo v0, "filename"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 481
    const-string/jumbo v0, "ex"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 482
    const-string/jumbo v0, "req_intent"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    .line 483
    invoke-direct {p0, v0}, Lcom/android/videomaker/service/MakerService;->aZu(Landroid/content/Intent;)V

    .line 484
    sget-object v1, Lcom/android/videomaker/service/MakerService;->aKc:Lcom/android/videomaker/service/b;

    invoke-virtual {v1, v0}, Lcom/android/videomaker/service/b;->aZK(Landroid/content/Intent;)V

    .line 487
    const-string/jumbo v0, "ex"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/lang/Exception;

    .line 488
    const-string/jumbo v1, "cancelled"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    .line 490
    const-string/jumbo v1, "uri"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    .line 494
    sget-object v2, Lcom/android/videomaker/service/MakerService;->aKe:Ljava/util/List;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1be
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_19

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/videomaker/service/c;

    .line 495
    invoke-virtual {v2, v3, v1, v0, v4}, Lcom/android/videomaker/service/c;->aZQ(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/Exception;Z)V

    goto :goto_1be

    .line 503
    :sswitch_1ce
    const-string/jumbo v0, "MakerService"

    const-string/jumbo v1, "OP_VIDEO_EDITOR_RELEASE"

    invoke-static {v0, v1}, Lcom/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 504
    if-eqz p5, :cond_19

    .line 505
    invoke-direct {p0, p1}, Lcom/android/videomaker/service/MakerService;->aZu(Landroid/content/Intent;)V

    goto/16 :goto_19

    .line 516
    :sswitch_1de
    const-string/jumbo v0, "MakerService"

    const-string/jumbo v1, "OP_VIDEO_EDITOR_DELETE"

    invoke-static {v0, v1}, Lcom/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 517
    if-eqz p5, :cond_1ec

    .line 518
    invoke-direct {p0, p1}, Lcom/android/videomaker/service/MakerService;->aZu(Landroid/content/Intent;)V

    .line 521
    :cond_1ec
    sget-object v0, Lcom/android/videomaker/service/MakerService;->aKe:Ljava/util/List;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1f2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_19

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/videomaker/service/c;

    .line 522
    invoke-virtual {v0, p4}, Lcom/android/videomaker/service/c;->aZR(Ljava/lang/Exception;)V

    goto :goto_1f2

    .line 363
    :sswitch_data_202
    .sparse-switch
        0x1 -> :sswitch_21
        0x2 -> :sswitch_139
        0x3 -> :sswitch_144
        0x4 -> :sswitch_16f
        0x5 -> :sswitch_1ce
        0x6 -> :sswitch_1de
        0x7 -> :sswitch_90
        0x1f4 -> :sswitch_9a
        0x1f5 -> :sswitch_be
        0x1f6 -> :sswitch_ce
        0x1f7 -> :sswitch_f4
        0x1f8 -> :sswitch_119
        0x1f9 -> :sswitch_129
    .end sparse-switch
.end method

.method public aZx(Landroid/content/Intent;)V
    .registers 12

    .prologue
    const/4 v9, 0x1

    const/4 v0, 0x0

    const/4 v6, 0x0

    .line 708
    const-string/jumbo v1, "op"

    const/4 v2, -0x1

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 709
    const-string/jumbo v2, "MakerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "processIntent op="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 722
    sparse-switch v1, :sswitch_data_2ca

    .line 883
    :try_start_28
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Unhandled operation: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_42
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_42} :catch_42

    .line 886
    :catch_42
    move-exception v2

    .line 887
    const-string/jumbo v0, "MakerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "processIntent, ex = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 888
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    move-object v0, p0

    move-object v1, p1

    move-object v3, v6

    move-object v4, v6

    move v5, v9

    .line 889
    invoke-direct/range {v0 .. v5}, Lcom/android/videomaker/service/MakerService;->aZr(Landroid/content/Intent;Ljava/lang/Exception;Ljava/lang/Object;Ljava/lang/Object;Z)V

    .line 707
    :cond_68
    :goto_68
    :sswitch_68
    return-void

    .line 724
    :sswitch_69
    :try_start_69
    const-string/jumbo v0, "MakerService"

    const-string/jumbo v1, "processIntent OP_VIDEO_EDITOR_CREATE"

    invoke-static {v0, v1}, Lcom/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 725
    sget-object v0, Lcom/android/videomaker/service/MakerService;->aKh:Lcom/android/videomaker/b/b;

    if-nez v0, :cond_68

    .line 726
    new-instance v0, Lcom/android/videomaker/b/b;

    invoke-direct {v0}, Lcom/android/videomaker/b/b;-><init>()V

    sput-object v0, Lcom/android/videomaker/service/MakerService;->aKh:Lcom/android/videomaker/b/b;

    .line 727
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/videomaker/service/MakerService;->aZr(Landroid/content/Intent;Ljava/lang/Exception;Ljava/lang/Object;Ljava/lang/Object;Z)V

    .line 729
    invoke-direct {p0, p1}, Lcom/android/videomaker/service/MakerService;->aZq(Landroid/content/Intent;)V

    goto :goto_68

    .line 740
    :sswitch_8a
    const-string/jumbo v1, "MakerService"

    const-string/jumbo v2, "OP_MEDIA_ITEM_ADD_IMAGES"

    invoke-static {v1, v2}, Lcom/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 742
    const-string/jumbo v1, "images"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 743
    const-string/jumbo v2, "MakerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "photos.length = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    array-length v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 744
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 745
    :goto_b9
    array-length v4, v1

    if-ge v0, v4, :cond_c3

    .line 746
    sget-boolean v4, Lcom/android/videomaker/service/MakerService;->aKd:Z

    if-eqz v4, :cond_f4

    .line 747
    invoke-direct {p0, p1}, Lcom/android/videomaker/service/MakerService;->aZv(Landroid/content/Intent;)V

    .line 759
    :cond_c3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long/2addr v0, v2

    .line 760
    const-string/jumbo v2, "MakerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "It takes "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " to add mediaItem!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 761
    sget-boolean v0, Lcom/android/videomaker/service/MakerService;->aKd:Z

    if-eqz v0, :cond_11b

    .line 762
    sget-object v0, Lcom/android/videomaker/service/MakerService;->aKh:Lcom/android/videomaker/b/b;

    invoke-virtual {v0}, Lcom/android/videomaker/b/b;->aYx()I

    goto/16 :goto_68

    .line 750
    :cond_f4
    aget-object v4, v1, v0

    .line 752
    if-nez v4, :cond_115

    .line 754
    const-string/jumbo v5, "MakerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Media file not found: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Lcom/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 745
    :goto_112
    add-int/lit8 v0, v0, 0x1

    goto :goto_b9

    .line 756
    :cond_115
    sget-object v5, Lcom/android/videomaker/service/MakerService;->aKh:Lcom/android/videomaker/b/b;

    invoke-virtual {v5, v4}, Lcom/android/videomaker/b/b;->aYw(Ljava/lang/String;)V

    goto :goto_112

    .line 765
    :cond_11b
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/videomaker/service/MakerService;->aZr(Landroid/content/Intent;Ljava/lang/Exception;Ljava/lang/Object;Ljava/lang/Object;Z)V

    .line 766
    invoke-direct {p0, p1}, Lcom/android/videomaker/service/MakerService;->aZq(Landroid/content/Intent;)V

    goto/16 :goto_68

    .line 772
    :sswitch_129
    sget-object v0, Lcom/android/videomaker/service/MakerService;->aKh:Lcom/android/videomaker/b/b;

    invoke-virtual {v0}, Lcom/android/videomaker/b/b;->aYx()I

    .line 773
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/videomaker/service/MakerService;->aZr(Landroid/content/Intent;Ljava/lang/Exception;Ljava/lang/Object;Ljava/lang/Object;Z)V

    .line 774
    invoke-direct {p0, p1}, Lcom/android/videomaker/service/MakerService;->aZq(Landroid/content/Intent;)V

    goto/16 :goto_68

    .line 779
    :sswitch_13c
    const-string/jumbo v0, "filename"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;
    :try_end_145
    .catch Ljava/lang/Exception; {:try_start_69 .. :try_end_145} :catch_42

    .line 784
    :try_start_145
    invoke-virtual {p0}, Lcom/android/videomaker/service/MakerService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 785
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v3, "_data"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 784
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_158
    .catchall {:try_start_145 .. :try_end_158} :catchall_19f

    move-result-object v2

    .line 786
    :try_start_159
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2c7

    .line 787
    const/4 v0, 0x0

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_163
    .catchall {:try_start_159 .. :try_end_163} :catchall_2c3

    move-result-object v3

    .line 790
    :goto_164
    if-eqz v2, :cond_169

    .line 791
    :try_start_166
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 794
    :cond_169
    const-string/jumbo v0, "MakerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "OP_AUDIO_TRACK_ADD_URI: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 795
    if-nez v3, :cond_1a7

    .line 796
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Media file not found: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 789
    :catchall_19f
    move-exception v0

    move-object v1, v6

    .line 790
    :goto_1a1
    if-eqz v1, :cond_1a6

    .line 791
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 789
    :cond_1a6
    throw v0
    :try_end_1a7
    .catch Ljava/lang/Exception; {:try_start_166 .. :try_end_1a7} :catch_42

    .line 800
    :cond_1a7
    :try_start_1a7
    sget-object v0, Lcom/android/videomaker/service/MakerService;->aKh:Lcom/android/videomaker/b/b;

    invoke-virtual {v0, v3}, Lcom/android/videomaker/b/b;->aYy(Ljava/lang/String;)V
    :try_end_1ac
    .catch Ljava/io/IOException; {:try_start_1a7 .. :try_end_1ac} :catch_1b9
    .catch Ljava/lang/Exception; {:try_start_1a7 .. :try_end_1ac} :catch_42

    move-object v2, v6

    .line 805
    :goto_1ad
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    :try_start_1b1
    invoke-direct/range {v0 .. v5}, Lcom/android/videomaker/service/MakerService;->aZr(Landroid/content/Intent;Ljava/lang/Exception;Ljava/lang/Object;Ljava/lang/Object;Z)V

    .line 806
    invoke-direct {p0, p1}, Lcom/android/videomaker/service/MakerService;->aZq(Landroid/content/Intent;)V

    goto/16 :goto_68

    .line 801
    :catch_1b9
    move-exception v0

    move-object v2, v0

    .line 802
    goto :goto_1ad

    .line 811
    :sswitch_1bc
    const-string/jumbo v0, "filename"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 812
    const-string/jumbo v1, "MakerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "OP_AUDIO_TRACK_ADD_NO_URI: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 813
    if-nez v0, :cond_1f9

    .line 814
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Media file not found: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 816
    :cond_1f9
    sget-object v1, Lcom/android/videomaker/service/MakerService;->aKh:Lcom/android/videomaker/b/b;

    invoke-virtual {v1, v0}, Lcom/android/videomaker/b/b;->aYy(Ljava/lang/String;)V

    .line 817
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/videomaker/service/MakerService;->aZr(Landroid/content/Intent;Ljava/lang/Exception;Ljava/lang/Object;Ljava/lang/Object;Z)V

    .line 819
    invoke-direct {p0, p1}, Lcom/android/videomaker/service/MakerService;->aZq(Landroid/content/Intent;)V

    goto/16 :goto_68

    .line 824
    :sswitch_20c
    const-string/jumbo v0, "filename"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 825
    const-string/jumbo v1, "MakerService"

    const-string/jumbo v2, "OP_AUDIO_TRACK_ADD_LIST: "

    invoke-static {v1, v2}, Lcom/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 826
    if-nez v0, :cond_227

    .line 827
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Media file list not found: "

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 829
    :cond_227
    sget-object v1, Lcom/android/videomaker/service/MakerService;->aKh:Lcom/android/videomaker/b/b;

    invoke-virtual {v1, v0}, Lcom/android/videomaker/b/b;->aYz(Ljava/util/ArrayList;)V

    .line 830
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/videomaker/service/MakerService;->aZr(Landroid/content/Intent;Ljava/lang/Exception;Ljava/lang/Object;Ljava/lang/Object;Z)V

    .line 832
    invoke-direct {p0, p1}, Lcom/android/videomaker/service/MakerService;->aZq(Landroid/content/Intent;)V

    goto/16 :goto_68

    .line 837
    :sswitch_23a
    const-string/jumbo v0, "MakerService"

    const-string/jumbo v1, "OP_AUDIO_TRACK_REMOVE"

    invoke-static {v0, v1}, Lcom/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 838
    sget-object v0, Lcom/android/videomaker/service/MakerService;->aKh:Lcom/android/videomaker/b/b;

    invoke-virtual {v0}, Lcom/android/videomaker/b/b;->aYA()V

    .line 839
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/videomaker/service/MakerService;->aZr(Landroid/content/Intent;Ljava/lang/Exception;Ljava/lang/Object;Ljava/lang/Object;Z)V

    .line 840
    invoke-direct {p0, p1}, Lcom/android/videomaker/service/MakerService;->aZq(Landroid/content/Intent;)V

    goto/16 :goto_68

    .line 845
    :sswitch_256
    const-string/jumbo v0, "MakerService"

    const-string/jumbo v1, "OP_AUDIO_TRACK_REMOVE_ALL"

    invoke-static {v0, v1}, Lcom/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 846
    sget-object v0, Lcom/android/videomaker/service/MakerService;->aKh:Lcom/android/videomaker/b/b;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/videomaker/b/b;->aYB(Ljava/util/ArrayList;)V

    .line 847
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/videomaker/service/MakerService;->aZr(Landroid/content/Intent;Ljava/lang/Exception;Ljava/lang/Object;Ljava/lang/Object;Z)V

    .line 848
    invoke-direct {p0, p1}, Lcom/android/videomaker/service/MakerService;->aZq(Landroid/content/Intent;)V

    goto/16 :goto_68

    .line 853
    :sswitch_273
    const-string/jumbo v0, "MakerService"

    const-string/jumbo v1, "OP_VIDEO_EDITOR_EXPORT"

    invoke-static {v0, v1}, Lcom/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 854
    invoke-direct {p0, p1}, Lcom/android/videomaker/service/MakerService;->aZs(Landroid/content/Intent;)V

    goto/16 :goto_68

    .line 859
    :sswitch_281
    const-string/jumbo v0, "MakerService"

    const-string/jumbo v1, "OP_VIDEO_EDITOR_CANCEL_EXPORT"

    invoke-static {v0, v1}, Lcom/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 860
    sget-object v0, Lcom/android/videomaker/service/MakerService;->aKh:Lcom/android/videomaker/b/b;

    const-string/jumbo v1, "filename"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/videomaker/b/b;->aYC(Ljava/lang/String;)V

    .line 861
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/videomaker/service/MakerService;->aZr(Landroid/content/Intent;Ljava/lang/Exception;Ljava/lang/Object;Ljava/lang/Object;Z)V

    goto/16 :goto_68

    .line 866
    :sswitch_2a1
    const-string/jumbo v0, "MakerService"

    const-string/jumbo v1, "OP_VIDEO_EDITOR_EXPORT_STATUS"

    invoke-static {v0, v1}, Lcom/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 867
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/videomaker/service/MakerService;->aZr(Landroid/content/Intent;Ljava/lang/Exception;Ljava/lang/Object;Ljava/lang/Object;Z)V

    goto/16 :goto_68

    .line 876
    :sswitch_2b5
    invoke-direct {p0}, Lcom/android/videomaker/service/MakerService;->aZy()V

    .line 878
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/videomaker/service/MakerService;->aZr(Landroid/content/Intent;Ljava/lang/Exception;Ljava/lang/Object;Ljava/lang/Object;Z)V
    :try_end_2c1
    .catch Ljava/lang/Exception; {:try_start_1b1 .. :try_end_2c1} :catch_42

    goto/16 :goto_68

    .line 789
    :catchall_2c3
    move-exception v0

    move-object v1, v2

    goto/16 :goto_1a1

    :cond_2c7
    move-object v3, v6

    goto/16 :goto_164

    .line 722
    :sswitch_data_2ca
    .sparse-switch
        0x1 -> :sswitch_69
        0x2 -> :sswitch_273
        0x3 -> :sswitch_281
        0x4 -> :sswitch_2a1
        0x5 -> :sswitch_68
        0x6 -> :sswitch_2b5
        0x7 -> :sswitch_68
        0x1f4 -> :sswitch_8a
        0x1f5 -> :sswitch_129
        0x1f6 -> :sswitch_13c
        0x1f7 -> :sswitch_1bc
        0x1f8 -> :sswitch_23a
        0x1f9 -> :sswitch_256
        0x1fa -> :sswitch_20c
    .end sparse-switch
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 4

    .prologue
    .line 117
    const-string/jumbo v0, "MakerService"

    const-string/jumbo v1, "onBind"

    invoke-static {v0, v1}, Lcom/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .registers 3

    .prologue
    .line 95
    const-string/jumbo v0, "MakerService"

    const-string/jumbo v1, "onCreate"

    invoke-static {v0, v1}, Lcom/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 97
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/videomaker/service/MakerService;->aKb:Landroid/os/Handler;

    .line 98
    new-instance v0, Lcom/android/videomaker/service/a;

    const-string/jumbo v1, "VideoServiceThread"

    invoke-direct {v0, p0, v1}, Lcom/android/videomaker/service/a;-><init>(Lcom/android/videomaker/service/MakerService;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/videomaker/service/MakerService;->aKi:Lcom/android/videomaker/service/a;

    .line 99
    iget-object v0, p0, Lcom/android/videomaker/service/MakerService;->aKi:Lcom/android/videomaker/service/a;

    invoke-virtual {v0}, Lcom/android/videomaker/service/a;->start()V

    .line 93
    return-void
.end method

.method public onDestroy()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 105
    const-string/jumbo v0, "MakerService"

    const-string/jumbo v1, "onDestroy"

    invoke-static {v0, v1}, Lcom/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    iget-object v0, p0, Lcom/android/videomaker/service/MakerService;->aKi:Lcom/android/videomaker/service/a;

    if-eqz v0, :cond_15

    .line 108
    iget-object v0, p0, Lcom/android/videomaker/service/MakerService;->aKi:Lcom/android/videomaker/service/a;

    invoke-virtual {v0}, Lcom/android/videomaker/service/a;->quit()V

    .line 109
    iput-object v2, p0, Lcom/android/videomaker/service/MakerService;->aKi:Lcom/android/videomaker/service/a;

    .line 111
    :cond_15
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 103
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .registers 8

    .prologue
    .line 125
    const-string/jumbo v0, "op"

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 126
    const-string/jumbo v1, "MakerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onStartCommand op="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    sparse-switch v0, :sswitch_data_48

    .line 147
    const-string/jumbo v1, "MakerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "No thread assigned: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    :goto_3f
    const/4 v0, 0x2

    return v0

    .line 142
    :sswitch_41
    iget-object v0, p0, Lcom/android/videomaker/service/MakerService;->aKi:Lcom/android/videomaker/service/a;

    invoke-virtual {v0, p1}, Lcom/android/videomaker/service/a;->aZI(Landroid/content/Intent;)V

    goto :goto_3f

    .line 127
    nop

    :sswitch_data_48
    .sparse-switch
        0x1 -> :sswitch_41
        0x2 -> :sswitch_41
        0x3 -> :sswitch_41
        0x4 -> :sswitch_41
        0x5 -> :sswitch_41
        0x6 -> :sswitch_41
        0x7 -> :sswitch_41
        0x1f4 -> :sswitch_41
        0x1f5 -> :sswitch_41
        0x1f6 -> :sswitch_41
        0x1f7 -> :sswitch_41
        0x1f8 -> :sswitch_41
        0x1f9 -> :sswitch_41
        0x1fa -> :sswitch_41
    .end sparse-switch
.end method
