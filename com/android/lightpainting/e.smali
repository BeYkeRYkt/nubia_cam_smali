.class public Lcom/android/lightpainting/e;
.super Lcom/android/common/o/l;
.source "SourceFile"

# interfaces
.implements Lcom/android/common/ui/ah;


# static fields
.field private static atj:J


# instance fields
.field private atA:J

.field private atB:Ljava/lang/String;

.field private atC:Lcom/android/common/k/b;

.field public atD:I

.field private atE:Landroid/widget/SeekBar;

.field private atF:Landroid/widget/TextView;

.field private atG:Ljava/lang/String;

.field private atH:Ljava/lang/String;

.field private atI:J

.field private atJ:Lcom/android/lightpainting/g;

.field private atK:Landroid/widget/LinearLayout;

.field private atL:Lcom/android/common/ui/LightStepSeekBar;

.field private atM:Landroid/widget/LinearLayout;

.field private atN:Landroid/location/Location;

.field private atO:Lcom/android/common/ui/MultiFunctionImageView;

.field private atP:Lcom/android/lightpainting/h;

.field private atQ:Lcom/android/common/ui/J;

.field private atR:J

.field private atS:Lcom/android/common/ui/NubiaProgressWheel;

.field private atT:Landroid/widget/TextView;

.field public atU:I

.field private atV:Landroid/widget/TextView;

.field private atW:Landroid/hardware/Camera$Size;

.field private atX:J

.field private atY:Landroid/widget/ImageView;

.field private atZ:I

.field private final atk:F

.field private final atl:F

.field private atm:J

.field private atn:Landroid/graphics/Bitmap;

.field private ato:Z

.field private atp:J

.field private atq:Landroid/widget/ImageView;

.field private atr:[B

.field private ats:Lcom/android/common/CameraBufferManager;

.field private att:Landroid/widget/RelativeLayout;

.field private atu:Lcom/android/common/ui/RotateImageView;

.field private atv:Lcom/android/common/k/a;

.field private atw:Lcom/android/lightpainting/i;

.field private atx:Lcom/android/lightpainting/j;

.field private aty:Lcom/android/common/ui/RotateLayout;

.field private atz:Landroid/widget/TextView;

.field private aua:Landroid/widget/RelativeLayout;

.field private aub:Lcom/android/common/ui/ZtemtShutterButton;

.field private auc:Ljava/lang/String;

.field private aud:Lcom/android/common/ui/RotateLayout;

.field private aue:Landroid/widget/ImageView;

.field private auf:Landroid/widget/ImageView;

.field private aug:Landroid/widget/RelativeLayout;

.field private auh:Landroid/widget/TextView;

.field private aui:F

.field private auj:Lcom/android/common/f/b;

.field private auk:I

.field private aul:Landroid/widget/SeekBar;

.field private aum:Ljava/lang/String;

.field private aun:Lcom/android/common/appService/z;

.field private auo:J

.field private aup:J

.field private mState:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 128
    const-wide/16 v0, 0x118

    sput-wide v0, Lcom/android/lightpainting/e;->atj:J

    .line 90
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>()V
    .registers 8

    .prologue
    const/4 v6, 0x1

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    const/4 v2, 0x0

    .line 216
    invoke-direct {p0}, Lcom/android/common/o/l;-><init>()V

    .line 95
    iput-object v2, p0, Lcom/android/lightpainting/e;->atY:Landroid/widget/ImageView;

    .line 97
    iput-object v2, p0, Lcom/android/lightpainting/e;->aua:Landroid/widget/RelativeLayout;

    .line 98
    iput-object v2, p0, Lcom/android/lightpainting/e;->aub:Lcom/android/common/ui/ZtemtShutterButton;

    .line 106
    iput-object v2, p0, Lcom/android/lightpainting/e;->atT:Landroid/widget/TextView;

    .line 107
    iput-object v2, p0, Lcom/android/lightpainting/e;->atV:Landroid/widget/TextView;

    .line 108
    iput-object v2, p0, Lcom/android/lightpainting/e;->atF:Landroid/widget/TextView;

    .line 109
    iput-object v2, p0, Lcom/android/lightpainting/e;->atE:Landroid/widget/SeekBar;

    .line 110
    iput-object v2, p0, Lcom/android/lightpainting/e;->aul:Landroid/widget/SeekBar;

    .line 112
    iput v6, p0, Lcom/android/lightpainting/e;->atD:I

    .line 113
    iput v3, p0, Lcom/android/lightpainting/e;->atU:I

    .line 115
    iput-object v2, p0, Lcom/android/lightpainting/e;->auc:Ljava/lang/String;

    .line 116
    iput-object v2, p0, Lcom/android/lightpainting/e;->aum:Ljava/lang/String;

    .line 117
    iput-object v2, p0, Lcom/android/lightpainting/e;->atB:Ljava/lang/String;

    .line 120
    new-instance v0, Lcom/android/lightpainting/g;

    invoke-direct {v0, p0}, Lcom/android/lightpainting/g;-><init>(Lcom/android/lightpainting/e;)V

    iput-object v0, p0, Lcom/android/lightpainting/e;->atJ:Lcom/android/lightpainting/g;

    .line 121
    iput-object v2, p0, Lcom/android/lightpainting/e;->ats:Lcom/android/common/CameraBufferManager;

    .line 122
    iput-object v2, p0, Lcom/android/lightpainting/e;->atC:Lcom/android/common/k/b;

    .line 123
    iput-object v2, p0, Lcom/android/lightpainting/e;->atv:Lcom/android/common/k/a;

    .line 124
    new-instance v0, Lcom/android/lightpainting/h;

    invoke-direct {v0, p0}, Lcom/android/lightpainting/h;-><init>(Lcom/android/lightpainting/e;)V

    iput-object v0, p0, Lcom/android/lightpainting/e;->atP:Lcom/android/lightpainting/h;

    .line 130
    iput-object v2, p0, Lcom/android/lightpainting/e;->aug:Landroid/widget/RelativeLayout;

    .line 131
    iput-object v2, p0, Lcom/android/lightpainting/e;->auf:Landroid/widget/ImageView;

    .line 132
    iput-object v2, p0, Lcom/android/lightpainting/e;->aue:Landroid/widget/ImageView;

    .line 133
    iput-object v2, p0, Lcom/android/lightpainting/e;->auh:Landroid/widget/TextView;

    .line 134
    sget-wide v0, Lcom/android/lightpainting/e;->atj:J

    iput-wide v0, p0, Lcom/android/lightpainting/e;->aup:J

    .line 135
    const v0, 0x3ecccccd    # 0.4f

    iput v0, p0, Lcom/android/lightpainting/e;->atk:F

    .line 136
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/android/lightpainting/e;->atl:F

    .line 140
    iput-boolean v6, p0, Lcom/android/lightpainting/e;->ato:Z

    .line 144
    iput-wide v4, p0, Lcom/android/lightpainting/e;->atp:J

    .line 145
    iput-wide v4, p0, Lcom/android/lightpainting/e;->auo:J

    .line 561
    iput v3, p0, Lcom/android/lightpainting/e;->atZ:I

    .line 563
    iput-wide v4, p0, Lcom/android/lightpainting/e;->atX:J

    .line 564
    iput-object v2, p0, Lcom/android/lightpainting/e;->atH:Ljava/lang/String;

    .line 565
    iput-object v2, p0, Lcom/android/lightpainting/e;->atG:Ljava/lang/String;

    .line 566
    iput-wide v4, p0, Lcom/android/lightpainting/e;->atI:J

    .line 567
    iput-object v2, p0, Lcom/android/lightpainting/e;->atW:Landroid/hardware/Camera$Size;

    .line 568
    iput-object v2, p0, Lcom/android/lightpainting/e;->atN:Landroid/location/Location;

    .line 569
    iput-object v2, p0, Lcom/android/lightpainting/e;->atn:Landroid/graphics/Bitmap;

    .line 730
    iput-wide v4, p0, Lcom/android/lightpainting/e;->atA:J

    .line 731
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/lightpainting/e;->aui:F

    .line 812
    iput v3, p0, Lcom/android/lightpainting/e;->mState:I

    .line 814
    const-wide/16 v0, 0x3e8

    iput-wide v0, p0, Lcom/android/lightpainting/e;->atm:J

    .line 815
    iput-wide v4, p0, Lcom/android/lightpainting/e;->atR:J

    .line 816
    iput v3, p0, Lcom/android/lightpainting/e;->auk:I

    .line 1038
    iput-object v2, p0, Lcom/android/lightpainting/e;->aty:Lcom/android/common/ui/RotateLayout;

    .line 1039
    iput-object v2, p0, Lcom/android/lightpainting/e;->atz:Landroid/widget/TextView;

    .line 215
    return-void
.end method

.method public constructor <init>(I)V
    .registers 9

    .prologue
    const/4 v6, 0x1

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    const/4 v2, 0x0

    .line 213
    invoke-direct {p0, p1}, Lcom/android/common/o/l;-><init>(I)V

    .line 95
    iput-object v2, p0, Lcom/android/lightpainting/e;->atY:Landroid/widget/ImageView;

    .line 97
    iput-object v2, p0, Lcom/android/lightpainting/e;->aua:Landroid/widget/RelativeLayout;

    .line 98
    iput-object v2, p0, Lcom/android/lightpainting/e;->aub:Lcom/android/common/ui/ZtemtShutterButton;

    .line 106
    iput-object v2, p0, Lcom/android/lightpainting/e;->atT:Landroid/widget/TextView;

    .line 107
    iput-object v2, p0, Lcom/android/lightpainting/e;->atV:Landroid/widget/TextView;

    .line 108
    iput-object v2, p0, Lcom/android/lightpainting/e;->atF:Landroid/widget/TextView;

    .line 109
    iput-object v2, p0, Lcom/android/lightpainting/e;->atE:Landroid/widget/SeekBar;

    .line 110
    iput-object v2, p0, Lcom/android/lightpainting/e;->aul:Landroid/widget/SeekBar;

    .line 112
    iput v6, p0, Lcom/android/lightpainting/e;->atD:I

    .line 113
    iput v3, p0, Lcom/android/lightpainting/e;->atU:I

    .line 115
    iput-object v2, p0, Lcom/android/lightpainting/e;->auc:Ljava/lang/String;

    .line 116
    iput-object v2, p0, Lcom/android/lightpainting/e;->aum:Ljava/lang/String;

    .line 117
    iput-object v2, p0, Lcom/android/lightpainting/e;->atB:Ljava/lang/String;

    .line 120
    new-instance v0, Lcom/android/lightpainting/g;

    invoke-direct {v0, p0}, Lcom/android/lightpainting/g;-><init>(Lcom/android/lightpainting/e;)V

    iput-object v0, p0, Lcom/android/lightpainting/e;->atJ:Lcom/android/lightpainting/g;

    .line 121
    iput-object v2, p0, Lcom/android/lightpainting/e;->ats:Lcom/android/common/CameraBufferManager;

    .line 122
    iput-object v2, p0, Lcom/android/lightpainting/e;->atC:Lcom/android/common/k/b;

    .line 123
    iput-object v2, p0, Lcom/android/lightpainting/e;->atv:Lcom/android/common/k/a;

    .line 124
    new-instance v0, Lcom/android/lightpainting/h;

    invoke-direct {v0, p0}, Lcom/android/lightpainting/h;-><init>(Lcom/android/lightpainting/e;)V

    iput-object v0, p0, Lcom/android/lightpainting/e;->atP:Lcom/android/lightpainting/h;

    .line 130
    iput-object v2, p0, Lcom/android/lightpainting/e;->aug:Landroid/widget/RelativeLayout;

    .line 131
    iput-object v2, p0, Lcom/android/lightpainting/e;->auf:Landroid/widget/ImageView;

    .line 132
    iput-object v2, p0, Lcom/android/lightpainting/e;->aue:Landroid/widget/ImageView;

    .line 133
    iput-object v2, p0, Lcom/android/lightpainting/e;->auh:Landroid/widget/TextView;

    .line 134
    sget-wide v0, Lcom/android/lightpainting/e;->atj:J

    iput-wide v0, p0, Lcom/android/lightpainting/e;->aup:J

    .line 135
    const v0, 0x3ecccccd    # 0.4f

    iput v0, p0, Lcom/android/lightpainting/e;->atk:F

    .line 136
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/android/lightpainting/e;->atl:F

    .line 140
    iput-boolean v6, p0, Lcom/android/lightpainting/e;->ato:Z

    .line 144
    iput-wide v4, p0, Lcom/android/lightpainting/e;->atp:J

    .line 145
    iput-wide v4, p0, Lcom/android/lightpainting/e;->auo:J

    .line 561
    iput v3, p0, Lcom/android/lightpainting/e;->atZ:I

    .line 563
    iput-wide v4, p0, Lcom/android/lightpainting/e;->atX:J

    .line 564
    iput-object v2, p0, Lcom/android/lightpainting/e;->atH:Ljava/lang/String;

    .line 565
    iput-object v2, p0, Lcom/android/lightpainting/e;->atG:Ljava/lang/String;

    .line 566
    iput-wide v4, p0, Lcom/android/lightpainting/e;->atI:J

    .line 567
    iput-object v2, p0, Lcom/android/lightpainting/e;->atW:Landroid/hardware/Camera$Size;

    .line 568
    iput-object v2, p0, Lcom/android/lightpainting/e;->atN:Landroid/location/Location;

    .line 569
    iput-object v2, p0, Lcom/android/lightpainting/e;->atn:Landroid/graphics/Bitmap;

    .line 730
    iput-wide v4, p0, Lcom/android/lightpainting/e;->atA:J

    .line 731
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/lightpainting/e;->aui:F

    .line 812
    iput v3, p0, Lcom/android/lightpainting/e;->mState:I

    .line 814
    const-wide/16 v0, 0x3e8

    iput-wide v0, p0, Lcom/android/lightpainting/e;->atm:J

    .line 815
    iput-wide v4, p0, Lcom/android/lightpainting/e;->atR:J

    .line 816
    iput v3, p0, Lcom/android/lightpainting/e;->auk:I

    .line 1038
    iput-object v2, p0, Lcom/android/lightpainting/e;->aty:Lcom/android/common/ui/RotateLayout;

    .line 1039
    iput-object v2, p0, Lcom/android/lightpainting/e;->atz:Landroid/widget/TextView;

    .line 212
    return-void
.end method

.method public static aFC()Lcom/android/lightpainting/e;
    .registers 2

    .prologue
    .line 220
    new-instance v0, Lcom/android/lightpainting/e;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/android/lightpainting/e;-><init>(I)V

    .line 221
    return-object v0
.end method

.method private aFF()V
    .registers 2

    .prologue
    .line 155
    iget-object v0, p0, Lcom/android/lightpainting/e;->auj:Lcom/android/common/f/b;

    invoke-virtual {v0}, Lcom/android/common/f/b;->cancel()V

    .line 156
    invoke-direct {p0}, Lcom/android/lightpainting/e;->aGb()V

    .line 154
    return-void
.end method

.method private aFG()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 896
    invoke-direct {p0}, Lcom/android/lightpainting/e;->aGu()V

    .line 897
    invoke-direct {p0, v1}, Lcom/android/lightpainting/e;->aGh(I)V

    .line 898
    invoke-direct {p0}, Lcom/android/lightpainting/e;->aGv()V

    .line 899
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/lightpainting/e;->aGw(Z)V

    .line 900
    invoke-virtual {p0}, Lcom/android/lightpainting/e;->releaseBuffer()V

    .line 901
    invoke-direct {p0}, Lcom/android/lightpainting/e;->aGc()V

    .line 902
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/lightpainting/e;->atv:Lcom/android/common/k/a;

    .line 903
    invoke-direct {p0}, Lcom/android/lightpainting/e;->aGl()V

    .line 904
    iget-object v0, p0, Lcom/android/lightpainting/e;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pY()Lcom/android/common/a/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/a/g;->ay()V

    .line 905
    iget-object v0, p0, Lcom/android/lightpainting/e;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v0, v1}, Lcom/android/common/appService/W;->pM(Z)V

    .line 906
    iput v1, p0, Lcom/android/lightpainting/e;->mState:I

    .line 895
    return-void
.end method

.method private aFH()Z
    .registers 3

    .prologue
    .line 204
    iget-object v0, p0, Lcom/android/lightpainting/e;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pH()Lcom/android/common/storagemanager/f;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/common/storagemanager/f;->agy(Lcom/android/common/storagemanager/h;)V

    .line 205
    iget-object v0, p0, Lcom/android/lightpainting/e;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pK()Z

    move-result v0

    if-nez v0, :cond_1d

    .line 206
    const-string/jumbo v0, "LightDrawFragment"

    const-string/jumbo v1, "Storage lower than 50MB"

    invoke-static {v0, v1}, Lcom/a/a;->bvt(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    const/4 v0, 0x0

    return v0

    .line 209
    :cond_1d
    const/4 v0, 0x1

    return v0
.end method

.method private aFI(Ljava/lang/String;Ljava/lang/String;JIILandroid/location/Location;)Landroid/content/ContentValues;
    .registers 13

    .prologue
    .line 615
    new-instance v0, Landroid/content/ContentValues;

    const/16 v1, 0x9

    invoke-direct {v0, v1}, Landroid/content/ContentValues;-><init>(I)V

    .line 616
    const-string/jumbo v1, "title"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 617
    const-string/jumbo v1, "_display_name"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ".jpg"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 618
    const-string/jumbo v1, "datetaken"

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 619
    const-string/jumbo v1, "mime_type"

    const-string/jumbo v2, "image/jpeg"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 620
    const-string/jumbo v1, "_data"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ".jpg"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 621
    const-string/jumbo v1, "width"

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 622
    const-string/jumbo v1, "height"

    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 623
    if-eqz p7, :cond_91

    .line 624
    const-string/jumbo v1, "latitude"

    invoke-virtual {p7}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 625
    const-string/jumbo v1, "longitude"

    invoke-virtual {p7}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 627
    :cond_91
    return-object v0
.end method

.method private aFJ()Landroid/util/SparseArray;
    .registers 8

    .prologue
    const v6, 0x3c23d70a    # 0.01f

    .line 649
    iget-wide v0, p0, Lcom/android/lightpainting/e;->atA:J

    long-to-float v0, v0

    const/high16 v1, 0x447a0000    # 1000.0f

    div-float/2addr v0, v1

    .line 651
    iget-object v1, p0, Lcom/android/lightpainting/e;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v1}, Lcom/android/common/appService/W;->pt()Lcom/android/common/cameradevice/p;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/common/cameradevice/p;->Ln()F

    move-result v1

    .line 652
    iget-object v2, p0, Lcom/android/lightpainting/e;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v2}, Lcom/android/common/appService/W;->pI()F

    move-result v2

    .line 654
    new-instance v3, Landroid/util/SparseArray;

    invoke-direct {v3}, Landroid/util/SparseArray;-><init>()V

    .line 655
    sget v4, Lcom/android/common/exif/o;->PE:I

    new-instance v5, Lcom/android/common/exif/m;

    invoke-direct {v5, v2, v6}, Lcom/android/common/exif/m;-><init>(FF)V

    invoke-virtual {v3, v4, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 656
    sget v2, Lcom/android/common/exif/o;->PF:I

    new-instance v4, Lcom/android/common/exif/m;

    invoke-direct {v4, v1, v6}, Lcom/android/common/exif/m;-><init>(FF)V

    invoke-virtual {v3, v2, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 657
    sget v1, Lcom/android/common/exif/o;->PK:I

    new-instance v2, Lcom/android/common/exif/m;

    invoke-direct {v2, v0, v6}, Lcom/android/common/exif/m;-><init>(FF)V

    invoke-virtual {v3, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 658
    sget v0, Lcom/android/common/exif/o;->PC:I

    invoke-static {}, Lcom/android/common/custom/D;->aeM()Lcom/android/common/custom/D;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/common/custom/D;->aeN()Lcom/android/common/custom/x;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/common/custom/x;->aem()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 660
    sget v0, Lcom/android/common/exif/o;->PD:I

    invoke-static {}, Lcom/android/common/custom/D;->aeM()Lcom/android/common/custom/D;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/common/custom/D;->aeN()Lcom/android/common/custom/x;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/common/custom/x;->aen()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 662
    iget-object v0, p0, Lcom/android/lightpainting/e;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pv()I

    move-result v0

    invoke-static {v0}, Lcom/android/common/h;->apu(I)I

    move-result v0

    iget v1, p0, Lcom/android/lightpainting/e;->atZ:I

    add-int/2addr v0, v1

    rem-int/lit16 v0, v0, 0x168

    .line 663
    rem-int/lit16 v0, v0, 0xb4

    if-nez v0, :cond_9f

    .line 664
    sget v0, Lcom/android/common/exif/o;->PG:I

    iget-object v1, p0, Lcom/android/lightpainting/e;->atW:Landroid/hardware/Camera$Size;

    iget v1, v1, Landroid/hardware/Camera$Size;->width:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 665
    sget v0, Lcom/android/common/exif/o;->PH:I

    iget-object v1, p0, Lcom/android/lightpainting/e;->atW:Landroid/hardware/Camera$Size;

    iget v1, v1, Landroid/hardware/Camera$Size;->height:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 670
    :goto_8b
    iget-object v0, p0, Lcom/android/lightpainting/e;->atN:Landroid/location/Location;

    if-eqz v0, :cond_9e

    .line 671
    iget-object v0, p0, Lcom/android/lightpainting/e;->atN:Landroid/location/Location;

    invoke-virtual {v0}, Landroid/location/Location;->getAltitude()D

    move-result-wide v0

    iget-object v2, p0, Lcom/android/lightpainting/e;->atN:Landroid/location/Location;

    invoke-virtual {v2}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    invoke-static {v0, v1, v4, v5, v3}, Lcom/android/common/h;->aoW(DDLandroid/util/SparseArray;)V

    .line 673
    :cond_9e
    return-object v3

    .line 667
    :cond_9f
    sget v0, Lcom/android/common/exif/o;->PG:I

    iget-object v1, p0, Lcom/android/lightpainting/e;->atW:Landroid/hardware/Camera$Size;

    iget v1, v1, Landroid/hardware/Camera$Size;->height:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 668
    sget v0, Lcom/android/common/exif/o;->PH:I

    iget-object v1, p0, Lcom/android/lightpainting/e;->atW:Landroid/hardware/Camera$Size;

    iget v1, v1, Landroid/hardware/Camera$Size;->width:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_8b
.end method

.method private aFK(Z)V
    .registers 2

    .prologue
    .line 521
    if-eqz p1, :cond_6

    .line 523
    invoke-virtual {p0}, Lcom/android/lightpainting/e;->aly()V

    .line 520
    :goto_5
    return-void

    .line 526
    :cond_6
    invoke-virtual {p0}, Lcom/android/lightpainting/e;->alz()V

    goto :goto_5
.end method

.method private aFL(Landroid/view/View;)V
    .registers 3

    .prologue
    .line 415
    const v0, 0x7f100019

    .line 414
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/lightpainting/e;->atY:Landroid/widget/ImageView;

    .line 418
    const v0, 0x7f10018c

    .line 417
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/android/lightpainting/e;->aua:Landroid/widget/RelativeLayout;

    .line 420
    const v0, 0x7f10018e

    .line 419
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/common/ui/ZtemtShutterButton;

    iput-object v0, p0, Lcom/android/lightpainting/e;->aub:Lcom/android/common/ui/ZtemtShutterButton;

    .line 421
    const v0, 0x7f100044

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/common/ui/NubiaProgressWheel;

    iput-object v0, p0, Lcom/android/lightpainting/e;->atS:Lcom/android/common/ui/NubiaProgressWheel;

    .line 422
    const v0, 0x7f10018f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/common/ui/MultiFunctionImageView;

    iput-object v0, p0, Lcom/android/lightpainting/e;->atO:Lcom/android/common/ui/MultiFunctionImageView;

    .line 413
    return-void
.end method

.method private aFM(Landroid/view/View;)V
    .registers 5

    .prologue
    .line 356
    const v0, 0x7f10001a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/lightpainting/e;->atT:Landroid/widget/TextView;

    .line 357
    iget-object v0, p0, Lcom/android/lightpainting/e;->atT:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/lightpainting/e;->auc:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 358
    const v0, 0x7f10001b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/lightpainting/e;->atV:Landroid/widget/TextView;

    .line 359
    iget-object v0, p0, Lcom/android/lightpainting/e;->atV:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/lightpainting/e;->aum:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 360
    const v0, 0x7f10001c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/lightpainting/e;->atF:Landroid/widget/TextView;

    .line 361
    iget-object v0, p0, Lcom/android/lightpainting/e;->atF:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/lightpainting/e;->atB:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "1/5"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 363
    const v0, 0x7f10001e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lcom/android/lightpainting/e;->aul:Landroid/widget/SeekBar;

    .line 364
    iget-object v0, p0, Lcom/android/lightpainting/e;->aul:Landroid/widget/SeekBar;

    new-instance v1, Lcom/android/lightpainting/o;

    invoke-direct {v1, p0}, Lcom/android/lightpainting/o;-><init>(Lcom/android/lightpainting/e;)V

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 381
    const v0, 0x7f10001d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lcom/android/lightpainting/e;->atE:Landroid/widget/SeekBar;

    .line 382
    iget-object v0, p0, Lcom/android/lightpainting/e;->atE:Landroid/widget/SeekBar;

    new-instance v1, Lcom/android/lightpainting/p;

    invoke-direct {v1, p0}, Lcom/android/lightpainting/p;-><init>(Lcom/android/lightpainting/e;)V

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 355
    return-void
.end method

.method private aFN()J
    .registers 3

    .prologue
    .line 960
    iget-object v0, p0, Lcom/android/lightpainting/e;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pb()Landroid/app/Activity;

    move-result-object v0

    const-string/jumbo v1, "activity"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 961
    new-instance v1, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct {v1}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    .line 962
    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    .line 963
    iget-wide v0, v1, Landroid/app/ActivityManager$MemoryInfo;->availMem:J

    return-wide v0
.end method

.method private aFO(F[F)F
    .registers 6

    .prologue
    const/4 v1, 0x0

    .line 706
    aget v0, p2, v1

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_a

    .line 707
    aget v0, p2, v1

    return v0

    .line 709
    :cond_a
    array-length v0, p2

    add-int/lit8 v0, v0, -0x1

    aget v0, p2, v0

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_19

    .line 710
    array-length v0, p2

    add-int/lit8 v0, v0, -0x1

    aget v0, p2, v0

    return v0

    :cond_19
    move v0, v1

    .line 714
    :goto_1a
    array-length v2, p2

    add-int/lit8 v2, v2, -0x1

    if-ge v0, v2, :cond_3f

    .line 715
    add-int/lit8 v2, v0, 0x1

    aget v2, p2, v2

    cmpl-float v2, p1, v2

    if-lez v2, :cond_2a

    .line 714
    add-int/lit8 v0, v0, 0x1

    goto :goto_1a

    .line 718
    :cond_2a
    aget v1, p2, v0

    sub-float v1, p1, v1

    .line 719
    add-int/lit8 v2, v0, 0x1

    aget v2, p2, v2

    sub-float/2addr v2, p1

    .line 720
    cmpl-float v1, v1, v2

    if-ltz v1, :cond_3c

    .line 721
    add-int/lit8 v0, v0, 0x1

    aget v0, p2, v0

    return v0

    .line 723
    :cond_3c
    aget v0, p2, v0

    return v0

    .line 727
    :cond_3f
    aget v0, p2, v1

    return v0
.end method

.method private aFP(Landroid/hardware/Camera$Size;)V
    .registers 12

    .prologue
    const-wide/16 v8, 0x3

    const/high16 v7, 0x1f400000

    const/16 v0, 0x14

    const/4 v6, 0x1

    .line 934
    iget v1, p1, Landroid/hardware/Camera$Size;->width:I

    iget v2, p1, Landroid/hardware/Camera$Size;->height:I

    mul-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x3

    div-int/lit8 v1, v1, 0x2

    .line 936
    invoke-direct {p0}, Lcom/android/lightpainting/e;->aFN()J

    move-result-wide v2

    int-to-long v4, v1

    div-long/2addr v2, v4

    div-long/2addr v2, v8

    long-to-int v2, v2

    if-le v0, v2, :cond_22

    .line 937
    invoke-direct {p0}, Lcom/android/lightpainting/e;->aFN()J

    move-result-wide v2

    int-to-long v4, v1

    div-long/2addr v2, v4

    div-long/2addr v2, v8

    long-to-int v0, v2

    .line 939
    :cond_22
    div-int v2, v7, v1

    if-le v0, v2, :cond_28

    .line 940
    div-int v0, v7, v1

    .line 942
    :cond_28
    const-string/jumbo v2, "LightDrawFragment"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "==info== proper buffer num2: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 944
    iget-object v2, p0, Lcom/android/lightpainting/e;->ats:Lcom/android/common/CameraBufferManager;

    if-eqz v2, :cond_47

    return-void

    .line 945
    :cond_47
    new-instance v2, Lcom/android/common/CameraBufferManager;

    invoke-direct {v2}, Lcom/android/common/CameraBufferManager;-><init>()V

    iput-object v2, p0, Lcom/android/lightpainting/e;->ats:Lcom/android/common/CameraBufferManager;

    .line 946
    iget-object v2, p0, Lcom/android/lightpainting/e;->ats:Lcom/android/common/CameraBufferManager;

    .line 947
    iget v3, p1, Landroid/hardware/Camera$Size;->width:I

    iget v4, p1, Landroid/hardware/Camera$Size;->height:I

    .line 946
    invoke-virtual {v2, v1, v0, v3, v4}, Lcom/android/common/CameraBufferManager;->initSlowShuttleBuffer(IIII)Z

    .line 948
    iget-object v0, p0, Lcom/android/lightpainting/e;->ats:Lcom/android/common/CameraBufferManager;

    iget v1, p0, Lcom/android/lightpainting/e;->atD:I

    invoke-virtual {v0, v6, v1}, Lcom/android/common/CameraBufferManager;->setSlowShuttleISO(II)V

    .line 949
    iget-object v0, p0, Lcom/android/lightpainting/e;->ats:Lcom/android/common/CameraBufferManager;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/common/CameraBufferManager;->setLumaThreshold(I)V

    .line 955
    iget-object v0, p0, Lcom/android/lightpainting/e;->ats:Lcom/android/common/CameraBufferManager;

    invoke-virtual {v0, v6}, Lcom/android/common/CameraBufferManager;->setOperatorMode(I)V

    .line 933
    return-void
.end method

.method private aFQ(Landroid/view/View;)V
    .registers 4

    .prologue
    .line 326
    const v0, 0x7f100047

    .line 325
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/android/lightpainting/e;->att:Landroid/widget/RelativeLayout;

    .line 328
    const v0, 0x7f10018d

    .line 327
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/common/ui/RotateImageView;

    iput-object v0, p0, Lcom/android/lightpainting/e;->atu:Lcom/android/common/ui/RotateImageView;

    .line 329
    iget-object v0, p0, Lcom/android/lightpainting/e;->att:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/android/lightpainting/n;

    invoke-direct {v1, p0}, Lcom/android/lightpainting/n;-><init>(Lcom/android/lightpainting/e;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 324
    return-void
.end method

.method private aFR(Landroid/hardware/Camera$Size;)V
    .registers 5

    .prologue
    .line 918
    iget-object v0, p0, Lcom/android/lightpainting/e;->atv:Lcom/android/common/k/a;

    if-nez v0, :cond_f

    .line 919
    new-instance v0, Lcom/android/common/k/a;

    iget-object v1, p0, Lcom/android/lightpainting/e;->ats:Lcom/android/common/CameraBufferManager;

    .line 920
    iget-object v2, p0, Lcom/android/lightpainting/e;->atP:Lcom/android/lightpainting/h;

    .line 919
    invoke-direct {v0, v1, v2, p1}, Lcom/android/common/k/a;-><init>(Lcom/android/common/CameraBufferManager;Landroid/os/Handler;Landroid/hardware/Camera$Size;)V

    iput-object v0, p0, Lcom/android/lightpainting/e;->atv:Lcom/android/common/k/a;

    .line 917
    :cond_f
    return-void
.end method

.method private aFS(Landroid/hardware/Camera$Size;)V
    .registers 6

    .prologue
    .line 924
    iget-object v0, p0, Lcom/android/lightpainting/e;->atC:Lcom/android/common/k/b;

    if-nez v0, :cond_1c

    .line 925
    new-instance v0, Lcom/android/common/custom/v;

    invoke-direct {v0}, Lcom/android/common/custom/v;-><init>()V

    .line 926
    iget v1, p1, Landroid/hardware/Camera$Size;->width:I

    iput v1, v0, Lcom/android/common/custom/v;->width:I

    .line 927
    iget v1, p1, Landroid/hardware/Camera$Size;->height:I

    iput v1, v0, Lcom/android/common/custom/v;->height:I

    .line 928
    new-instance v1, Lcom/android/common/k/b;

    iget-object v2, p0, Lcom/android/lightpainting/e;->ats:Lcom/android/common/CameraBufferManager;

    .line 929
    iget-object v3, p0, Lcom/android/lightpainting/e;->atP:Lcom/android/lightpainting/h;

    .line 928
    invoke-direct {v1, v2, v3, v0}, Lcom/android/common/k/b;-><init>(Lcom/android/common/CameraBufferManager;Landroid/os/Handler;Lcom/android/common/custom/v;)V

    iput-object v1, p0, Lcom/android/lightpainting/e;->atC:Lcom/android/common/k/b;

    .line 923
    :cond_1c
    return-void
.end method

.method private aFT(Landroid/view/View;)V
    .registers 6

    .prologue
    const/4 v3, 0x0

    .line 300
    invoke-static {}, Lcom/android/common/custom/D;->aeM()Lcom/android/common/custom/D;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/custom/D;->aeN()Lcom/android/common/custom/x;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/common/custom/x;->adf()Z

    move-result v0

    if-nez v0, :cond_10

    .line 301
    return-void

    .line 303
    :cond_10
    const v0, 0x7f10001f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/lightpainting/e;->atK:Landroid/widget/LinearLayout;

    .line 304
    iget-object v0, p0, Lcom/android/lightpainting/e;->atK:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 305
    const v0, 0x7f100022

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/common/ui/LightStepSeekBar;

    iput-object v0, p0, Lcom/android/lightpainting/e;->atL:Lcom/android/common/ui/LightStepSeekBar;

    .line 306
    iget-object v0, p0, Lcom/android/lightpainting/e;->atL:Lcom/android/common/ui/LightStepSeekBar;

    iget-object v1, p0, Lcom/android/lightpainting/e;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v1}, Lcom/android/common/appService/W;->pp()Lcom/android/common/setting/PreferenceGroup;

    move-result-object v1

    .line 307
    const-string/jumbo v2, "pref_camera_light_draw_step"

    .line 306
    invoke-virtual {v1, v2}, Lcom/android/common/setting/PreferenceGroup;->YV(Ljava/lang/String;)Lcom/android/common/setting/ListPreference;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Lcom/android/common/ui/LightStepSeekBar;->Fd(Lcom/android/common/setting/ListPreference;Z)V

    .line 308
    iget-object v0, p0, Lcom/android/lightpainting/e;->atL:Lcom/android/common/ui/LightStepSeekBar;

    invoke-virtual {v0, p0}, Lcom/android/common/ui/LightStepSeekBar;->Ff(Lcom/android/common/ui/ah;)V

    .line 309
    const v0, 0x7f100021

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/lightpainting/e;->atq:Landroid/widget/ImageView;

    .line 310
    const v0, 0x7f100020

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/lightpainting/e;->atM:Landroid/widget/LinearLayout;

    .line 311
    iget-object v0, p0, Lcom/android/lightpainting/e;->atM:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/android/lightpainting/m;

    invoke-direct {v1, p0}, Lcom/android/lightpainting/m;-><init>(Lcom/android/lightpainting/e;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 299
    return-void
.end method

.method private aFU()V
    .registers 9

    .prologue
    .line 276
    invoke-virtual {p0}, Lcom/android/lightpainting/e;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d007b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 277
    new-instance v1, Lcom/android/common/ui/J;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    .line 278
    iget-object v3, p0, Lcom/android/lightpainting/e;->atM:Landroid/widget/LinearLayout;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/android/lightpainting/e;->atL:Lcom/android/common/ui/LightStepSeekBar;

    const/4 v4, 0x1

    aput-object v3, v2, v4

    const-string/jumbo v3, "translationY"

    const/4 v4, 0x0

    .line 279
    int-to-float v5, v0

    const-wide/16 v6, 0x1f4

    .line 277
    invoke-direct/range {v1 .. v7}, Lcom/android/common/ui/J;-><init>([Ljava/lang/Object;Ljava/lang/String;FFJ)V

    iput-object v1, p0, Lcom/android/lightpainting/e;->atQ:Lcom/android/common/ui/J;

    .line 280
    iget-object v0, p0, Lcom/android/lightpainting/e;->atQ:Lcom/android/common/ui/J;

    new-instance v1, Lcom/android/lightpainting/l;

    invoke-direct {v1, p0}, Lcom/android/lightpainting/l;-><init>(Lcom/android/lightpainting/e;)V

    invoke-virtual {v0, v1}, Lcom/android/common/ui/J;->Aj(Lcom/android/common/ui/K;)V

    .line 274
    return-void
.end method

.method private aFV()V
    .registers 3

    .prologue
    .line 409
    iget-object v0, p0, Lcom/android/lightpainting/e;->aub:Lcom/android/common/ui/ZtemtShutterButton;

    iget-object v1, p0, Lcom/android/lightpainting/e;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v1}, Lcom/android/common/appService/W;->rU()Lcom/android/common/h/l;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/common/h/l;->acb()Lcom/android/common/h/i;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/common/ui/ZtemtShutterButton;->xa(Lcom/android/common/ui/u;)V

    .line 408
    return-void
.end method

.method private aFW()V
    .registers 3

    .prologue
    .line 147
    iget-object v0, p0, Lcom/android/lightpainting/e;->auj:Lcom/android/common/f/b;

    if-nez v0, :cond_1f

    .line 148
    sget-boolean v0, Lcom/android/common/independentutil/IndependenceUtil;->agb:Z

    if-nez v0, :cond_c

    sget-boolean v0, Lcom/android/common/independentutil/IndependenceUtil;->agc:Z

    .line 147
    if-eqz v0, :cond_1f

    .line 149
    :cond_c
    new-instance v1, Lcom/android/common/f/b;

    invoke-virtual {p0}, Lcom/android/lightpainting/e;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/common/ActivityBase;

    invoke-direct {v1, v0}, Lcom/android/common/f/b;-><init>(Lcom/android/common/ActivityBase;)V

    iput-object v1, p0, Lcom/android/lightpainting/e;->auj:Lcom/android/common/f/b;

    .line 150
    iget-object v0, p0, Lcom/android/lightpainting/e;->auj:Lcom/android/common/f/b;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/common/f/b;->aan(I)V

    .line 146
    :cond_1f
    return-void
.end method

.method private aFX(Landroid/view/View;)V
    .registers 4

    .prologue
    .line 242
    invoke-direct {p0, p1}, Lcom/android/lightpainting/e;->aFL(Landroid/view/View;)V

    .line 243
    invoke-direct {p0, p1}, Lcom/android/lightpainting/e;->aFM(Landroid/view/View;)V

    .line 244
    invoke-direct {p0, p1}, Lcom/android/lightpainting/e;->aFQ(Landroid/view/View;)V

    .line 245
    const v0, 0x7f100196

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/common/ui/RotateLayout;

    iput-object v0, p0, Lcom/android/lightpainting/e;->aud:Lcom/android/common/ui/RotateLayout;

    .line 246
    iget-object v0, p0, Lcom/android/lightpainting/e;->aud:Lcom/android/common/ui/RotateLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/common/ui/RotateLayout;->setVisibility(I)V

    .line 247
    const v0, 0x7f1000aa

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/lightpainting/e;->atz:Landroid/widget/TextView;

    .line 248
    const v0, 0x7f1000a9

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/common/ui/RotateLayout;

    iput-object v0, p0, Lcom/android/lightpainting/e;->aty:Lcom/android/common/ui/RotateLayout;

    .line 250
    const v0, 0x7f10010b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/lightpainting/e;->auf:Landroid/widget/ImageView;

    .line 251
    const v0, 0x7f10010a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/lightpainting/e;->aue:Landroid/widget/ImageView;

    .line 252
    const v0, 0x7f100109

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/android/lightpainting/e;->aug:Landroid/widget/RelativeLayout;

    .line 253
    iget-object v0, p0, Lcom/android/lightpainting/e;->aug:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/android/lightpainting/k;

    invoke-direct {v1, p0}, Lcom/android/lightpainting/k;-><init>(Lcom/android/lightpainting/e;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 269
    invoke-direct {p0, p1}, Lcom/android/lightpainting/e;->aFT(Landroid/view/View;)V

    .line 270
    const v0, 0x7f10010c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/lightpainting/e;->auh:Landroid/widget/TextView;

    .line 271
    invoke-direct {p0}, Lcom/android/lightpainting/e;->aGg()V

    .line 241
    return-void
.end method

.method private aFY()Z
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 1190
    const v1, 0x7f0a0470

    invoke-virtual {p0, v1}, Lcom/android/lightpainting/e;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1191
    invoke-static {}, Lcom/android/common/custom/D;->aeM()Lcom/android/common/custom/D;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/common/custom/D;->aeN()Lcom/android/common/custom/x;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/common/custom/x;->adf()Z

    move-result v2

    if-eqz v2, :cond_27

    .line 1192
    invoke-virtual {p0}, Lcom/android/lightpainting/e;->aln()Landroid/content/SharedPreferences;

    move-result-object v2

    .line 1193
    const-string/jumbo v3, "pref_camera_light_draw_step"

    .line 1192
    invoke-interface {v2, v3, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_28

    .line 1191
    :cond_27
    :goto_27
    return v0

    .line 1192
    :cond_28
    const/4 v0, 0x1

    goto :goto_27
.end method

.method private aFZ(Lcom/android/common/f/b;Landroid/graphics/Bitmap;)V
    .registers 14

    .prologue
    const/4 v10, 0x0

    const/high16 v4, 0x3f000000    # 0.5f

    const/4 v7, 0x0

    .line 159
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 160
    if-eqz p1, :cond_c4

    iget-wide v0, p0, Lcom/android/lightpainting/e;->atR:J

    sub-long v0, v8, v0

    iget-wide v2, p0, Lcom/android/lightpainting/e;->atm:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_c4

    .line 162
    iget v0, p0, Lcom/android/lightpainting/e;->auk:I

    if-eqz v0, :cond_3f

    .line 163
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 164
    iget v0, p0, Lcom/android/lightpainting/e;->auk:I

    int-to-float v0, v0

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v4

    .line 165
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v4

    .line 164
    invoke-virtual {v5, v0, v1, v2}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 168
    :try_start_2f
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    .line 167
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 168
    const/4 v6, 0x1

    move-object v0, p2

    .line 167
    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;
    :try_end_3e
    .catch Ljava/lang/Throwable; {:try_start_2f .. :try_end_3e} :catch_ae

    move-result-object p2

    .line 173
    :cond_3f
    :goto_3f
    const-string/jumbo v0, "time1___"

    const-string/jumbo v1, "BITMAP_PREPARED 2"

    invoke-static {v0, v1}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    .line 175
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    .line 177
    and-int/lit8 v2, v1, 0xf

    if-eqz v2, :cond_5a

    .line 178
    shr-int/lit8 v1, v1, 0x4

    add-int/lit8 v1, v1, 0x1

    shl-int/lit8 v1, v1, 0x4

    .line 180
    :cond_5a
    and-int/lit8 v2, v0, 0xf

    if-eqz v2, :cond_64

    .line 181
    shr-int/lit8 v0, v0, 0x4

    add-int/lit8 v0, v0, 0x1

    shl-int/lit8 v0, v0, 0x4

    .line 183
    :cond_64
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v0, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 184
    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 185
    new-instance v4, Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    invoke-direct {v4, v7, v7, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 186
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5, v7, v7, v1, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 185
    invoke-virtual {v3, p2, v4, v5, v10}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 187
    iget-object v0, p0, Lcom/android/lightpainting/e;->auj:Lcom/android/common/f/b;

    sget-object v1, Lcom/android/common/appService/CameraMember;->jr:Lcom/android/common/appService/CameraMember;

    invoke-virtual {v1}, Lcom/android/common/appService/CameraMember;->mc()I

    move-result v1

    invoke-static {v1}, Lcom/android/common/f;->aol(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/android/common/f/b;->aaq(Landroid/graphics/Bitmap;Ljava/lang/String;)V

    .line 188
    iput-wide v8, p0, Lcom/android/lightpainting/e;->atR:J

    .line 189
    invoke-direct {p0}, Lcom/android/lightpainting/e;->aFH()Z

    move-result v0

    if-nez v0, :cond_c4

    .line 190
    const-string/jumbo v0, "LightDrawFragment"

    const-string/jumbo v1, "Storage not enought,stop making video"

    invoke-static {v0, v1}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    invoke-direct {p0}, Lcom/android/lightpainting/e;->aGs()V

    .line 193
    :try_start_a7
    iget-object v0, p0, Lcom/android/lightpainting/e;->atP:Lcom/android/lightpainting/h;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/lightpainting/h;->removeMessages(I)V
    :try_end_ad
    .catch Ljava/lang/NullPointerException; {:try_start_a7 .. :try_end_ad} :catch_b9

    .line 197
    :goto_ad
    return-void

    .line 169
    :catch_ae
    move-exception v0

    .line 170
    const-string/jumbo v1, "LightDrawFragment"

    const-string/jumbo v2, "Failed to rotate bitmap"

    invoke-static {v1, v2, v0}, Lcom/a/a;->bvr(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3f

    .line 194
    :catch_b9
    move-exception v0

    .line 195
    const-string/jumbo v0, "LightDrawFragment"

    const-string/jumbo v1, "removeMessages Failed"

    invoke-static {v0, v1}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_ad

    .line 158
    :cond_c4
    return-void
.end method

.method static synthetic aGA(Lcom/android/lightpainting/e;)Lcom/android/common/appService/W;
    .registers 2

    iget-object v0, p0, Lcom/android/lightpainting/e;->adt:Lcom/android/common/appService/W;

    return-object v0
.end method

.method static synthetic aGB(Lcom/android/lightpainting/e;)Landroid/widget/ImageView;
    .registers 2

    iget-object v0, p0, Lcom/android/lightpainting/e;->atq:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic aGC(Lcom/android/lightpainting/e;)[B
    .registers 2

    iget-object v0, p0, Lcom/android/lightpainting/e;->atr:[B

    return-object v0
.end method

.method static synthetic aGD(Lcom/android/lightpainting/e;)Lcom/android/common/CameraBufferManager;
    .registers 2

    iget-object v0, p0, Lcom/android/lightpainting/e;->ats:Lcom/android/common/CameraBufferManager;

    return-object v0
.end method

.method static synthetic aGE(Lcom/android/lightpainting/e;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/android/lightpainting/e;->atB:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic aGF(Lcom/android/lightpainting/e;)Landroid/widget/TextView;
    .registers 2

    iget-object v0, p0, Lcom/android/lightpainting/e;->atF:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic aGG(Lcom/android/lightpainting/e;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/lightpainting/e;->adv:Z

    return v0
.end method

.method static synthetic aGH(Lcom/android/lightpainting/e;)Lcom/android/common/ui/J;
    .registers 2

    iget-object v0, p0, Lcom/android/lightpainting/e;->atQ:Lcom/android/common/ui/J;

    return-object v0
.end method

.method static synthetic aGI(Lcom/android/lightpainting/e;)Landroid/widget/TextView;
    .registers 2

    iget-object v0, p0, Lcom/android/lightpainting/e;->atT:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic aGJ(Lcom/android/lightpainting/e;)Landroid/widget/TextView;
    .registers 2

    iget-object v0, p0, Lcom/android/lightpainting/e;->atV:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic aGK(Lcom/android/lightpainting/e;)Landroid/widget/ImageView;
    .registers 2

    iget-object v0, p0, Lcom/android/lightpainting/e;->atY:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic aGL(Lcom/android/lightpainting/e;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/android/lightpainting/e;->auc:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic aGM(Lcom/android/lightpainting/e;)Landroid/widget/ImageView;
    .registers 2

    iget-object v0, p0, Lcom/android/lightpainting/e;->auf:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic aGN(Lcom/android/lightpainting/e;)Landroid/widget/RelativeLayout;
    .registers 2

    iget-object v0, p0, Lcom/android/lightpainting/e;->aug:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic aGO(Lcom/android/lightpainting/e;)Landroid/widget/TextView;
    .registers 2

    iget-object v0, p0, Lcom/android/lightpainting/e;->auh:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic aGP(Lcom/android/lightpainting/e;)Lcom/android/common/f/b;
    .registers 2

    iget-object v0, p0, Lcom/android/lightpainting/e;->auj:Lcom/android/common/f/b;

    return-object v0
.end method

.method static synthetic aGQ(Lcom/android/lightpainting/e;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/android/lightpainting/e;->aum:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic aGR(Lcom/android/lightpainting/e;)Lcom/android/common/appService/z;
    .registers 2

    iget-object v0, p0, Lcom/android/lightpainting/e;->aun:Lcom/android/common/appService/z;

    return-object v0
.end method

.method static synthetic aGS(Lcom/android/lightpainting/e;)J
    .registers 3

    iget-wide v0, p0, Lcom/android/lightpainting/e;->auo:J

    return-wide v0
.end method

.method static synthetic aGT(Lcom/android/lightpainting/e;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/lightpainting/e;->ato:Z

    return p1
.end method

.method static synthetic aGU(Lcom/android/lightpainting/e;J)J
    .registers 4

    iput-wide p1, p0, Lcom/android/lightpainting/e;->atp:J

    return-wide p1
.end method

.method static synthetic aGV(Lcom/android/lightpainting/e;Lcom/android/common/k/a;)Lcom/android/common/k/a;
    .registers 2

    iput-object p1, p0, Lcom/android/lightpainting/e;->atv:Lcom/android/common/k/a;

    return-object p1
.end method

.method static synthetic aGW(Lcom/android/lightpainting/e;I)I
    .registers 2

    iput p1, p0, Lcom/android/lightpainting/e;->mState:I

    return p1
.end method

.method static synthetic aGX(Lcom/android/lightpainting/e;J)J
    .registers 4

    iput-wide p1, p0, Lcom/android/lightpainting/e;->auo:J

    return-wide p1
.end method

.method static synthetic aGY(Lcom/android/lightpainting/e;J)J
    .registers 4

    iput-wide p1, p0, Lcom/android/lightpainting/e;->aup:J

    return-wide p1
.end method

.method static synthetic aGZ(Lcom/android/lightpainting/e;)Z
    .registers 2

    invoke-direct {p0}, Lcom/android/lightpainting/e;->aGt()Z

    move-result v0

    return v0
.end method

.method private aGa()V
    .registers 7

    .prologue
    const/16 v5, 0x4a

    .line 680
    const-wide/16 v0, 0x0

    .line 686
    const-string/jumbo v2, "LightDrawFragment"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "==refreshUnitExposureTime : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 688
    const v0, 0x3d75c28f    # 0.06f

    iput v0, p0, Lcom/android/lightpainting/e;->aui:F

    .line 689
    iget-object v0, p0, Lcom/android/lightpainting/e;->atP:Lcom/android/lightpainting/h;

    invoke-virtual {v0, v5}, Lcom/android/lightpainting/h;->removeMessages(I)V

    .line 690
    iget-object v0, p0, Lcom/android/lightpainting/e;->atP:Lcom/android/lightpainting/h;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v5, v2, v3}, Lcom/android/lightpainting/h;->sendEmptyMessageDelayed(IJ)Z

    .line 695
    const/16 v0, 0x8

    new-array v0, v0, [F

    fill-array-data v0, :array_5c

    .line 697
    iget v1, p0, Lcom/android/lightpainting/e;->aui:F

    invoke-direct {p0, v1, v0}, Lcom/android/lightpainting/e;->aFO(F[F)F

    move-result v0

    iput v0, p0, Lcom/android/lightpainting/e;->aui:F

    .line 699
    const-string/jumbo v0, "LightDrawFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "refreshUnitExposureTime: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/lightpainting/e;->aui:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 677
    return-void

    .line 695
    nop

    :array_5c
    .array-data 4
        0x3d4ccccd    # 0.05f
        0x3da3d70a    # 0.08f
        0x3dcccccd    # 0.1f
        0x3e800000    # 0.25f
        0x3ecccccd    # 0.4f
        0x3f000000    # 0.5f
        0x3f800000    # 1.0f
        0x3faccccd    # 1.35f
    .end array-data
.end method

.method private aGb()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 486
    iget-object v0, p0, Lcom/android/lightpainting/e;->auj:Lcom/android/common/f/b;

    if-eqz v0, :cond_c

    .line 487
    iget-object v0, p0, Lcom/android/lightpainting/e;->auj:Lcom/android/common/f/b;

    invoke-virtual {v0}, Lcom/android/common/f/b;->release()V

    .line 488
    iput-object v1, p0, Lcom/android/lightpainting/e;->auj:Lcom/android/common/f/b;

    .line 485
    :cond_c
    return-void
.end method

.method private aGc()V
    .registers 3

    .prologue
    .line 501
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/lightpainting/e;->atA:J

    .line 502
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/lightpainting/e;->aui:F

    .line 500
    return-void
.end method

.method private aGd(Lcom/android/common/CameraBufferManager;)V
    .registers 16

    .prologue
    .line 572
    iget-object v0, p0, Lcom/android/lightpainting/e;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pv()I

    move-result v0

    invoke-static {v0}, Lcom/android/common/h;->apu(I)I

    move-result v0

    iget v1, p0, Lcom/android/lightpainting/e;->atZ:I

    add-int/2addr v0, v1

    rem-int/lit16 v2, v0, 0x168

    .line 574
    sparse-switch v2, :sswitch_data_120

    .line 581
    iget-object v0, p0, Lcom/android/lightpainting/e;->atW:Landroid/hardware/Camera$Size;

    iget v0, v0, Landroid/hardware/Camera$Size;->width:I

    .line 582
    iget-object v1, p0, Lcom/android/lightpainting/e;->atW:Landroid/hardware/Camera$Size;

    iget v1, v1, Landroid/hardware/Camera$Size;->height:I

    .line 585
    :goto_1a
    iget-object v3, p0, Lcom/android/lightpainting/e;->atn:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_26

    iget-object v3, p0, Lcom/android/lightpainting/e;->atn:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    if-eq v3, v1, :cond_bb

    .line 587
    :cond_26
    :goto_26
    :try_start_26
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v0, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/lightpainting/e;->atn:Landroid/graphics/Bitmap;
    :try_end_2e
    .catch Ljava/lang/OutOfMemoryError; {:try_start_26 .. :try_end_2e} :catch_c5

    .line 599
    :cond_2e
    :goto_2e
    iget-object v0, p0, Lcom/android/lightpainting/e;->ats:Lcom/android/common/CameraBufferManager;

    iget-object v1, p0, Lcom/android/lightpainting/e;->atn:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v2, v1}, Lcom/android/common/CameraBufferManager;->getSlowShuttleBitmap(ILandroid/graphics/Bitmap;)V

    .line 600
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 601
    iget-object v0, p0, Lcom/android/lightpainting/e;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pF()I

    move-result v0

    invoke-static {v0}, Lcom/android/common/f;->aol(I)Ljava/lang/String;

    move-result-object v3

    .line 602
    invoke-static {v4, v5}, Lcom/android/common/h;->aoV(J)Ljava/lang/String;

    move-result-object v2

    .line 603
    iget-object v0, p0, Lcom/android/lightpainting/e;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pG()Lcom/android/common/r/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/common/r/a;->ane()Landroid/location/Location;

    move-result-object v0

    iput-object v0, p0, Lcom/android/lightpainting/e;->atN:Landroid/location/Location;

    .line 604
    new-instance v0, Lcom/android/common/b/d;

    iget-object v9, p0, Lcom/android/lightpainting/e;->adt:Lcom/android/common/appService/W;

    .line 605
    iget-object v10, p0, Lcom/android/lightpainting/e;->atn:Landroid/graphics/Bitmap;

    .line 606
    invoke-direct {p0}, Lcom/android/lightpainting/e;->aFJ()Landroid/util/SparseArray;

    move-result-object v11

    .line 607
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v6, "/"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v6, ".jpg"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 608
    iget-object v1, p0, Lcom/android/lightpainting/e;->atn:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    iget-object v1, p0, Lcom/android/lightpainting/e;->atn:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    iget-object v8, p0, Lcom/android/lightpainting/e;->atN:Landroid/location/Location;

    move-object v1, p0

    invoke-direct/range {v1 .. v8}, Lcom/android/lightpainting/e;->aFI(Ljava/lang/String;Ljava/lang/String;JIILandroid/location/Location;)Landroid/content/ContentValues;

    move-result-object v6

    .line 610
    new-instance v8, Lcom/android/lightpainting/f;

    const/4 v1, 0x0

    invoke-direct {v8, p0, v1}, Lcom/android/lightpainting/f;-><init>(Lcom/android/lightpainting/e;Lcom/android/lightpainting/f;)V

    .line 609
    const/4 v7, 0x0

    move-object v1, v9

    move-object v2, v10

    move-object v3, v11

    move-object v4, v12

    move-object v5, v13

    .line 604
    invoke-direct/range {v0 .. v8}, Lcom/android/common/b/d;-><init>(Lcom/android/common/appService/W;Landroid/graphics/Bitmap;Landroid/util/SparseArray;Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;ILcom/android/common/b/f;)V

    .line 611
    iget-object v1, p0, Lcom/android/lightpainting/e;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v1}, Lcom/android/common/appService/W;->pH()Lcom/android/common/storagemanager/f;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/common/storagemanager/f;->agv(Lcom/android/common/b/g;)Lcom/android/common/storagemanager/StorageManager$StorageStatusType;

    .line 571
    return-void

    .line 577
    :sswitch_b1
    iget-object v0, p0, Lcom/android/lightpainting/e;->atW:Landroid/hardware/Camera$Size;

    iget v1, v0, Landroid/hardware/Camera$Size;->width:I

    .line 578
    iget-object v0, p0, Lcom/android/lightpainting/e;->atW:Landroid/hardware/Camera$Size;

    iget v0, v0, Landroid/hardware/Camera$Size;->height:I

    goto/16 :goto_1a

    .line 585
    :cond_bb
    iget-object v3, p0, Lcom/android/lightpainting/e;->atn:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    if-eq v3, v0, :cond_2e

    goto/16 :goto_26

    .line 588
    :catch_c5
    move-exception v0

    .line 589
    invoke-virtual {v0}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    .line 591
    :try_start_c9
    const-string/jumbo v0, "LightDrawFragment"

    const-string/jumbo v1, "dump hprof for LightDrawFragment start!"

    invoke-static {v0, v1}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 592
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "/sdcard/camera_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ".hprof"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Debug;->dumpHprofData(Ljava/lang/String;)V

    .line 593
    const-string/jumbo v0, "LightDrawFragment"

    const-string/jumbo v1, "dump hprof for LightDrawFragment end!"

    invoke-static {v0, v1}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_fd
    .catch Ljava/io/IOException; {:try_start_c9 .. :try_end_fd} :catch_ff

    goto/16 :goto_2e

    .line 594
    :catch_ff
    move-exception v0

    .line 595
    const-string/jumbo v1, "LightDrawFragment"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "dump hprof fail "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2e

    .line 574
    :sswitch_data_120
    .sparse-switch
        0x0 -> :sswitch_b1
        0xb4 -> :sswitch_b1
    .end sparse-switch
.end method

.method private aGe(Ljava/lang/CharSequence;)V
    .registers 3

    .prologue
    .line 1060
    iget-object v0, p0, Lcom/android/lightpainting/e;->atz:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1059
    return-void
.end method

.method private aGf(Ljava/lang/String;)V
    .registers 6

    .prologue
    .line 1107
    iget-boolean v0, p0, Lcom/android/lightpainting/e;->adv:Z

    if-nez v0, :cond_e

    .line 1108
    invoke-virtual {p0}, Lcom/android/lightpainting/e;->all()Lcom/android/common/appService/W;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pu()Lcom/android/common/cameradevice/j;

    move-result-object v0

    if-nez v0, :cond_f

    .line 1109
    :cond_e
    return-void

    .line 1111
    :cond_f
    invoke-virtual {p0}, Lcom/android/lightpainting/e;->all()Lcom/android/common/appService/W;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pt()Lcom/android/common/cameradevice/p;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/common/cameradevice/p;->Ml(Ljava/lang/String;)V

    .line 1112
    invoke-virtual {p0}, Lcom/android/lightpainting/e;->all()Lcom/android/common/appService/W;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pu()Lcom/android/common/cameradevice/j;

    move-result-object v0

    .line 1113
    invoke-virtual {p0}, Lcom/android/lightpainting/e;->all()Lcom/android/common/appService/W;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/common/appService/W;->pt()Lcom/android/common/cameradevice/p;

    move-result-object v1

    .line 1112
    invoke-virtual {v0, v1}, Lcom/android/common/cameradevice/j;->KE(Lcom/android/common/cameradevice/p;)V

    .line 1114
    const-string/jumbo v0, "torch"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5b

    .line 1115
    const-string/jumbo v0, "LightDrawFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "torchtime = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/lightpainting/e;->aup:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 1116
    iget-object v0, p0, Lcom/android/lightpainting/e;->atP:Lcom/android/lightpainting/h;

    iget-wide v2, p0, Lcom/android/lightpainting/e;->aup:J

    const/16 v1, 0x6a

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/lightpainting/h;->sendEmptyMessageDelayed(IJ)Z

    .line 1106
    :cond_5b
    return-void
.end method

.method private aGg()V
    .registers 2

    .prologue
    .line 428
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/android/common/ui/h;

    iput-object v0, p0, Lcom/android/lightpainting/e;->adw:[Lcom/android/common/ui/h;

    .line 427
    return-void
.end method

.method private aGh(I)V
    .registers 4

    .prologue
    .line 798
    iget-object v0, p0, Lcom/android/lightpainting/e;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pN()Lcom/android/common/setting/o;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/common/setting/o;->Xy()Ljava/lang/String;

    move-result-object v0

    .line 799
    const-string/jumbo v1, "-1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2d

    .line 800
    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    const/high16 v1, 0x447a0000    # 1000.0f

    mul-float/2addr v0, v1

    float-to-long v0, v0

    iput-wide v0, p0, Lcom/android/lightpainting/e;->atm:J

    .line 801
    iget-object v0, p0, Lcom/android/lightpainting/e;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v0, p1}, Lcom/android/common/appService/W;->sQ(I)V

    .line 802
    iget-object v0, p0, Lcom/android/lightpainting/e;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pB()V

    .line 803
    iget-object v0, p0, Lcom/android/lightpainting/e;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pA()V

    .line 797
    :goto_2c
    return-void

    .line 805
    :cond_2d
    const-wide/16 v0, 0x3e8

    iput-wide v0, p0, Lcom/android/lightpainting/e;->atm:J

    goto :goto_2c
.end method

.method private aGi()V
    .registers 1

    .prologue
    .line 404
    invoke-direct {p0}, Lcom/android/lightpainting/e;->aFV()V

    .line 403
    return-void
.end method

.method private aGj()V
    .registers 4

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 967
    iget-object v0, p0, Lcom/android/lightpainting/e;->aud:Lcom/android/common/ui/RotateLayout;

    invoke-virtual {v0, v2}, Lcom/android/common/ui/RotateLayout;->setVisibility(I)V

    .line 968
    invoke-virtual {p0}, Lcom/android/lightpainting/e;->alr()V

    .line 969
    iget-object v0, p0, Lcom/android/lightpainting/e;->aua:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 970
    iget-object v0, p0, Lcom/android/lightpainting/e;->atS:Lcom/android/common/ui/NubiaProgressWheel;

    invoke-virtual {v0, v1}, Lcom/android/common/ui/NubiaProgressWheel;->setVisibility(I)V

    .line 971
    iget-object v0, p0, Lcom/android/lightpainting/e;->atS:Lcom/android/common/ui/NubiaProgressWheel;

    invoke-virtual {v0}, Lcom/android/common/ui/NubiaProgressWheel;->start()V

    .line 972
    iget-object v0, p0, Lcom/android/lightpainting/e;->atO:Lcom/android/common/ui/MultiFunctionImageView;

    invoke-virtual {v0, v1}, Lcom/android/common/ui/MultiFunctionImageView;->setVisibility(I)V

    .line 973
    iget-object v0, p0, Lcom/android/lightpainting/e;->atO:Lcom/android/common/ui/MultiFunctionImageView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/common/ui/MultiFunctionImageView;->ED(Z)V

    .line 974
    invoke-direct {p0, v2}, Lcom/android/lightpainting/e;->aGm(I)V

    .line 966
    return-void
.end method

.method private aGk(Z)V
    .registers 4

    .prologue
    .line 1056
    iget-object v1, p0, Lcom/android/lightpainting/e;->aty:Lcom/android/common/ui/RotateLayout;

    if-eqz p1, :cond_f

    const/4 v0, 0x0

    :goto_5
    invoke-virtual {v1, v0}, Lcom/android/common/ui/RotateLayout;->setVisibility(I)V

    .line 1057
    const-string/jumbo v0, ""

    invoke-direct {p0, v0}, Lcom/android/lightpainting/e;->aGe(Ljava/lang/CharSequence;)V

    .line 1055
    return-void

    .line 1056
    :cond_f
    const/16 v0, 0x8

    goto :goto_5
.end method

.method private aGl()V
    .registers 6

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/16 v2, 0x8

    .line 506
    invoke-virtual {p0}, Lcom/android/lightpainting/e;->alk()Lcom/android/common/camerastate/UIState;

    move-result-object v0

    sget-object v1, Lcom/android/common/camerastate/UIState;->afl:Lcom/android/common/camerastate/UIState;

    if-ne v0, v1, :cond_d

    .line 507
    return-void

    .line 509
    :cond_d
    invoke-virtual {p0, v3}, Lcom/android/lightpainting/e;->aGo(Z)V

    .line 510
    iget-object v0, p0, Lcom/android/lightpainting/e;->aug:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 511
    iget-object v0, p0, Lcom/android/lightpainting/e;->aua:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 512
    invoke-virtual {p0}, Lcom/android/lightpainting/e;->alq()V

    .line 513
    iget-object v0, p0, Lcom/android/lightpainting/e;->atP:Lcom/android/lightpainting/h;

    invoke-virtual {v0, v4}, Lcom/android/lightpainting/h;->removeMessages(I)V

    .line 514
    iget-object v0, p0, Lcom/android/lightpainting/e;->atY:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 515
    iget-object v0, p0, Lcom/android/lightpainting/e;->atY:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 516
    invoke-direct {p0, v3}, Lcom/android/lightpainting/e;->aGm(I)V

    .line 517
    invoke-direct {p0, v4}, Lcom/android/lightpainting/e;->aFK(Z)V

    .line 505
    return-void
.end method

.method private aGm(I)V
    .registers 3

    .prologue
    .line 294
    invoke-static {}, Lcom/android/common/custom/D;->aeM()Lcom/android/common/custom/D;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/custom/D;->aeN()Lcom/android/common/custom/x;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/common/custom/x;->adf()Z

    move-result v0

    if-nez v0, :cond_f

    .line 295
    return-void

    .line 297
    :cond_f
    iget-object v0, p0, Lcom/android/lightpainting/e;->atK:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 293
    return-void
.end method

.method private aGn()V
    .registers 7

    .prologue
    const/16 v5, 0x8

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1162
    iget-object v0, p0, Lcom/android/lightpainting/e;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pp()Lcom/android/common/setting/PreferenceGroup;

    move-result-object v0

    .line 1163
    const-string/jumbo v1, "pref_camera_flashmode_for_lightpainting_key"

    .line 1162
    invoke-virtual {v0, v1}, Lcom/android/common/setting/PreferenceGroup;->YV(Ljava/lang/String;)Lcom/android/common/setting/ListPreference;

    move-result-object v0

    .line 1164
    if-nez v0, :cond_16

    .line 1165
    return-void

    .line 1167
    :cond_16
    invoke-virtual {v0}, Lcom/android/common/setting/ListPreference;->Vz()I

    move-result v1

    if-eqz v1, :cond_22

    invoke-direct {p0}, Lcom/android/lightpainting/e;->aFY()Z

    move-result v1

    if-eqz v1, :cond_2d

    .line 1168
    :cond_22
    iget-object v0, p0, Lcom/android/lightpainting/e;->aug:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1169
    iget-object v0, p0, Lcom/android/lightpainting/e;->aug:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setClickable(Z)V

    .line 1161
    :goto_2c
    return-void

    .line 1170
    :cond_2d
    invoke-virtual {v0}, Lcom/android/common/setting/ListPreference;->Vz()I

    move-result v1

    if-ne v1, v3, :cond_50

    .line 1171
    iget-object v0, p0, Lcom/android/lightpainting/e;->aug:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1172
    iget-object v0, p0, Lcom/android/lightpainting/e;->aug:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setClickable(Z)V

    .line 1173
    iget-object v0, p0, Lcom/android/lightpainting/e;->auf:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 1174
    iget-object v0, p0, Lcom/android/lightpainting/e;->aue:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1175
    iget-object v0, p0, Lcom/android/lightpainting/e;->auh:Landroid/widget/TextView;

    const-string/jumbo v1, "M"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2c

    .line 1177
    :cond_50
    iget-object v1, p0, Lcom/android/lightpainting/e;->aug:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1178
    iget-object v1, p0, Lcom/android/lightpainting/e;->aug:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout;->setClickable(Z)V

    .line 1179
    iget-object v1, p0, Lcom/android/lightpainting/e;->auf:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 1180
    iget-object v1, p0, Lcom/android/lightpainting/e;->aue:Landroid/widget/ImageView;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1181
    iget-object v1, p0, Lcom/android/lightpainting/e;->auh:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/common/setting/ListPreference;->Vq()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2c
.end method

.method private aGp()V
    .registers 4

    .prologue
    const/4 v2, 0x1

    .line 863
    iget-object v0, p0, Lcom/android/lightpainting/e;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v0, v2}, Lcom/android/common/appService/W;->pM(Z)V

    .line 864
    invoke-direct {p0}, Lcom/android/lightpainting/e;->aGj()V

    .line 865
    iget-object v0, p0, Lcom/android/lightpainting/e;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pY()Lcom/android/common/a/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/a/g;->as()V

    .line 866
    iput v2, p0, Lcom/android/lightpainting/e;->mState:I

    .line 867
    iget-object v0, p0, Lcom/android/lightpainting/e;->adt:Lcom/android/common/appService/W;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/common/appService/W;->pz(I)V

    .line 868
    iget-object v0, p0, Lcom/android/lightpainting/e;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pu()Lcom/android/common/cameradevice/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/cameradevice/j;->KX()Lcom/android/common/cameradevice/p;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/common/cameradevice/p;->LF()Landroid/hardware/Camera$Size;

    move-result-object v0

    iput-object v0, p0, Lcom/android/lightpainting/e;->atW:Landroid/hardware/Camera$Size;

    .line 869
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/lightpainting/e;->atA:J

    .line 870
    iget-wide v0, p0, Lcom/android/lightpainting/e;->atA:J

    iput-wide v0, p0, Lcom/android/lightpainting/e;->atR:J

    .line 871
    iget-object v0, p0, Lcom/android/lightpainting/e;->atW:Landroid/hardware/Camera$Size;

    invoke-direct {p0, v0}, Lcom/android/lightpainting/e;->aFP(Landroid/hardware/Camera$Size;)V

    .line 872
    invoke-direct {p0, v2}, Lcom/android/lightpainting/e;->aGh(I)V

    .line 873
    iget-object v0, p0, Lcom/android/lightpainting/e;->atW:Landroid/hardware/Camera$Size;

    invoke-direct {p0, v0}, Lcom/android/lightpainting/e;->aFS(Landroid/hardware/Camera$Size;)V

    .line 874
    iget-object v0, p0, Lcom/android/lightpainting/e;->atW:Landroid/hardware/Camera$Size;

    invoke-direct {p0, v0}, Lcom/android/lightpainting/e;->aFR(Landroid/hardware/Camera$Size;)V

    .line 875
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/lightpainting/e;->aFK(Z)V

    .line 876
    invoke-direct {p0}, Lcom/android/lightpainting/e;->aGa()V

    .line 877
    iget v0, p0, Lcom/android/lightpainting/e;->atZ:I

    iput v0, p0, Lcom/android/lightpainting/e;->auk:I

    .line 878
    iget-object v0, p0, Lcom/android/lightpainting/e;->atW:Landroid/hardware/Camera$Size;

    invoke-direct {p0, v0}, Lcom/android/lightpainting/e;->aGr(Landroid/hardware/Camera$Size;)V

    .line 879
    invoke-direct {p0}, Lcom/android/lightpainting/e;->aGq()V

    .line 880
    invoke-direct {p0}, Lcom/android/lightpainting/e;->aGn()V

    .line 862
    return-void
.end method

.method private aGq()V
    .registers 5

    .prologue
    .line 1141
    iget-object v0, p0, Lcom/android/lightpainting/e;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pp()Lcom/android/common/setting/PreferenceGroup;

    move-result-object v0

    .line 1142
    const-string/jumbo v1, "pref_camera_flashmode_for_lightpainting_key"

    .line 1141
    invoke-virtual {v0, v1}, Lcom/android/common/setting/PreferenceGroup;->YV(Ljava/lang/String;)Lcom/android/common/setting/ListPreference;

    move-result-object v0

    .line 1143
    if-eqz v0, :cond_15

    invoke-direct {p0}, Lcom/android/lightpainting/e;->aFY()Z

    move-result v1

    if-eqz v1, :cond_16

    .line 1144
    :cond_15
    return-void

    .line 1147
    :cond_16
    invoke-virtual {v0}, Lcom/android/common/setting/ListPreference;->Vz()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_34

    .line 1148
    invoke-virtual {v0}, Lcom/android/common/setting/ListPreference;->Vq()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 1149
    new-instance v1, Lcom/android/lightpainting/j;

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v2, v0

    invoke-direct {v1, p0, v2, v3}, Lcom/android/lightpainting/j;-><init>(Lcom/android/lightpainting/e;J)V

    iput-object v1, p0, Lcom/android/lightpainting/e;->atx:Lcom/android/lightpainting/j;

    .line 1150
    iget-object v0, p0, Lcom/android/lightpainting/e;->atx:Lcom/android/lightpainting/j;

    invoke-virtual {v0}, Lcom/android/lightpainting/j;->start()Landroid/os/CountDownTimer;

    .line 1140
    :cond_34
    return-void
.end method

.method private aGr(Landroid/hardware/Camera$Size;)V
    .registers 5

    .prologue
    .line 909
    iget-object v0, p0, Lcom/android/lightpainting/e;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pw()Lcom/android/common/appService/k;

    move-result-object v0

    .line 910
    iget-object v1, p0, Lcom/android/lightpainting/e;->atJ:Lcom/android/lightpainting/g;

    iget-object v2, p0, Lcom/android/lightpainting/e;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v2}, Lcom/android/common/appService/W;->pv()I

    move-result v2

    .line 909
    invoke-virtual {v0, v1, v2}, Lcom/android/common/appService/k;->jP(Landroid/hardware/Camera$PreviewCallback;I)V

    .line 911
    iget-object v0, p0, Lcom/android/lightpainting/e;->atr:[B

    if-nez v0, :cond_22

    .line 912
    iget v0, p1, Landroid/hardware/Camera$Size;->width:I

    iget v1, p1, Landroid/hardware/Camera$Size;->height:I

    mul-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v0, v0, 0x2

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/android/lightpainting/e;->atr:[B

    .line 914
    :cond_22
    iget-object v0, p0, Lcom/android/lightpainting/e;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pu()Lcom/android/common/cameradevice/j;

    move-result-object v0

    iget-object v1, p0, Lcom/android/lightpainting/e;->atr:[B

    invoke-virtual {v0, v1}, Lcom/android/common/cameradevice/j;->KW([B)V

    .line 915
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/lightpainting/e;->auo:J

    .line 908
    return-void
.end method

.method private aGs()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 883
    iget-object v0, p0, Lcom/android/lightpainting/e;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v0, v3}, Lcom/android/common/appService/W;->pM(Z)V

    .line 884
    invoke-virtual {p0}, Lcom/android/lightpainting/e;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string/jumbo v1, "lightdraw_1"

    const-string/jumbo v2, "LightDrawFragment"

    invoke-static {v0, v1, v2}, Lcom/android/common/h;->aoP(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 885
    invoke-direct {p0}, Lcom/android/lightpainting/e;->aGu()V

    .line 886
    invoke-direct {p0, v3}, Lcom/android/lightpainting/e;->aFK(Z)V

    .line 887
    invoke-direct {p0, v3}, Lcom/android/lightpainting/e;->aGh(I)V

    .line 888
    invoke-direct {p0}, Lcom/android/lightpainting/e;->aGv()V

    .line 889
    iget-object v0, p0, Lcom/android/lightpainting/e;->adt:Lcom/android/common/appService/W;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/android/common/appService/W;->pz(I)V

    .line 890
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/lightpainting/e;->aGo(Z)V

    .line 891
    iget-object v0, p0, Lcom/android/lightpainting/e;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pY()Lcom/android/common/a/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/a/g;->ay()V

    .line 892
    invoke-direct {p0, v3}, Lcom/android/lightpainting/e;->aGw(Z)V

    .line 893
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/lightpainting/e;->atA:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/lightpainting/e;->atA:J

    .line 882
    return-void
.end method

.method private aGt()Z
    .registers 5

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1078
    iget v0, p0, Lcom/android/lightpainting/e;->mState:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_8

    .line 1079
    return v2

    .line 1081
    :cond_8
    iget-object v0, p0, Lcom/android/lightpainting/e;->atw:Lcom/android/lightpainting/i;

    invoke-virtual {v0}, Lcom/android/lightpainting/i;->cancel()V

    .line 1082
    iput v2, p0, Lcom/android/lightpainting/e;->mState:I

    .line 1083
    invoke-virtual {p0, v3}, Lcom/android/lightpainting/e;->aFE(Z)V

    .line 1084
    iget-object v0, p0, Lcom/android/lightpainting/e;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pl()Lcom/android/common/camerastate/a;

    move-result-object v0

    sget-object v1, Lcom/android/common/camerastate/FunctionState;->afv:Lcom/android/common/camerastate/FunctionState;

    invoke-virtual {v0, v1}, Lcom/android/common/camerastate/a;->amL(Lcom/android/common/camerastate/FunctionState;)V

    .line 1085
    invoke-direct {p0, v2}, Lcom/android/lightpainting/e;->aGk(Z)V

    .line 1086
    return v3
.end method

.method private aGu()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 1155
    iget-object v0, p0, Lcom/android/lightpainting/e;->atx:Lcom/android/lightpainting/j;

    if-eqz v0, :cond_c

    .line 1156
    iget-object v0, p0, Lcom/android/lightpainting/e;->atx:Lcom/android/lightpainting/j;

    invoke-virtual {v0}, Lcom/android/lightpainting/j;->cancel()V

    .line 1157
    iput-object v1, p0, Lcom/android/lightpainting/e;->atx:Lcom/android/lightpainting/j;

    .line 1154
    :cond_c
    return-void
.end method

.method private aGv()V
    .registers 3

    .prologue
    .line 548
    :try_start_0
    iget-object v0, p0, Lcom/android/lightpainting/e;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pw()Lcom/android/common/appService/k;

    move-result-object v0

    iget-object v1, p0, Lcom/android/lightpainting/e;->atJ:Lcom/android/lightpainting/g;

    invoke-virtual {v0, v1}, Lcom/android/common/appService/k;->jK(Landroid/hardware/Camera$PreviewCallback;)V
    :try_end_b
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_b} :catch_c

    .line 546
    :goto_b
    return-void

    .line 549
    :catch_c
    move-exception v0

    .line 550
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_b
.end method

.method private aGw(Z)V
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 532
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/lightpainting/e;->mState:I

    .line 533
    iget-object v0, p0, Lcom/android/lightpainting/e;->atC:Lcom/android/common/k/b;

    if-eqz v0, :cond_f

    .line 534
    iget-object v0, p0, Lcom/android/lightpainting/e;->atC:Lcom/android/common/k/b;

    invoke-virtual {v0}, Lcom/android/common/k/b;->agc()V

    .line 535
    iput-object v1, p0, Lcom/android/lightpainting/e;->atC:Lcom/android/common/k/b;

    .line 537
    :cond_f
    iget-object v0, p0, Lcom/android/lightpainting/e;->atv:Lcom/android/common/k/a;

    if-eqz v0, :cond_1c

    .line 538
    if-eqz p1, :cond_1d

    .line 539
    iget-object v0, p0, Lcom/android/lightpainting/e;->atv:Lcom/android/common/k/a;

    invoke-virtual {v0}, Lcom/android/common/k/a;->agb()V

    .line 540
    iput-object v1, p0, Lcom/android/lightpainting/e;->atv:Lcom/android/common/k/a;

    .line 531
    :cond_1c
    :goto_1c
    return-void

    .line 542
    :cond_1d
    iget-object v0, p0, Lcom/android/lightpainting/e;->atv:Lcom/android/common/k/a;

    invoke-virtual {v0}, Lcom/android/common/k/a;->aga()V

    goto :goto_1c
.end method

.method static synthetic aGx()J
    .registers 2

    sget-wide v0, Lcom/android/lightpainting/e;->atj:J

    return-wide v0
.end method

.method static synthetic aGy(Lcom/android/lightpainting/e;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/lightpainting/e;->ato:Z

    return v0
.end method

.method static synthetic aGz(Lcom/android/lightpainting/e;)J
    .registers 3

    iget-wide v0, p0, Lcom/android/lightpainting/e;->atp:J

    return-wide v0
.end method

.method static synthetic aHa(Lcom/android/lightpainting/e;)Lcom/android/common/appService/W;
    .registers 2

    invoke-virtual {p0}, Lcom/android/lightpainting/e;->all()Lcom/android/common/appService/W;

    move-result-object v0

    return-object v0
.end method

.method static synthetic aHb(Lcom/android/lightpainting/e;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/lightpainting/e;->aFF()V

    return-void
.end method

.method static synthetic aHc(Lcom/android/lightpainting/e;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/lightpainting/e;->aFG()V

    return-void
.end method

.method static synthetic aHd(Lcom/android/lightpainting/e;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/lightpainting/e;->aFK(Z)V

    return-void
.end method

.method static synthetic aHe(Lcom/android/lightpainting/e;Lcom/android/common/f/b;Landroid/graphics/Bitmap;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/lightpainting/e;->aFZ(Lcom/android/common/f/b;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method static synthetic aHf(Lcom/android/lightpainting/e;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/lightpainting/e;->aGa()V

    return-void
.end method

.method static synthetic aHg(Lcom/android/lightpainting/e;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/lightpainting/e;->aGc()V

    return-void
.end method

.method static synthetic aHh(Lcom/android/lightpainting/e;Lcom/android/common/CameraBufferManager;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/lightpainting/e;->aGd(Lcom/android/common/CameraBufferManager;)V

    return-void
.end method

.method static synthetic aHi(Lcom/android/lightpainting/e;Ljava/lang/CharSequence;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/lightpainting/e;->aGe(Ljava/lang/CharSequence;)V

    return-void
.end method

.method static synthetic aHj(Lcom/android/lightpainting/e;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/lightpainting/e;->aGf(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic aHk(Lcom/android/lightpainting/e;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/lightpainting/e;->aGl()V

    return-void
.end method

.method static synthetic aHl(Lcom/android/lightpainting/e;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/lightpainting/e;->aGp()V

    return-void
.end method

.method static synthetic aHm(Lcom/android/lightpainting/e;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/lightpainting/e;->aGu()V

    return-void
.end method


# virtual methods
.method public Fg(I)V
    .registers 4

    .prologue
    .line 1186
    iget-object v0, p0, Lcom/android/lightpainting/e;->adt:Lcom/android/common/appService/W;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/common/appService/W;->pU(I)V

    .line 1185
    return-void
.end method

.method public aFD()V
    .registers 2

    .prologue
    .line 1033
    iget-object v0, p0, Lcom/android/lightpainting/e;->aua:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/android/lightpainting/e;->aua:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_11

    .line 1034
    iget-object v0, p0, Lcom/android/lightpainting/e;->aub:Lcom/android/common/ui/ZtemtShutterButton;

    invoke-virtual {v0}, Lcom/android/common/ui/ZtemtShutterButton;->performClick()Z

    .line 1032
    :cond_11
    return-void
.end method

.method aFE(Z)V
    .registers 3

    .prologue
    .line 1198
    iget-object v0, p0, Lcom/android/lightpainting/e;->atL:Lcom/android/common/ui/LightStepSeekBar;

    if-eqz v0, :cond_e

    .line 1199
    iget-object v0, p0, Lcom/android/lightpainting/e;->atL:Lcom/android/common/ui/LightStepSeekBar;

    invoke-virtual {v0, p1}, Lcom/android/common/ui/LightStepSeekBar;->setEnabled(Z)V

    .line 1200
    iget-object v0, p0, Lcom/android/lightpainting/e;->atM:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 1196
    :cond_e
    return-void
.end method

.method public aGo(Z)V
    .registers 5

    .prologue
    const/16 v2, 0x8

    .line 341
    if-eqz p1, :cond_1c

    .line 342
    iget-object v0, p0, Lcom/android/lightpainting/e;->atS:Lcom/android/common/ui/NubiaProgressWheel;

    invoke-virtual {v0}, Lcom/android/common/ui/NubiaProgressWheel;->stop()V

    .line 343
    iget-object v0, p0, Lcom/android/lightpainting/e;->atS:Lcom/android/common/ui/NubiaProgressWheel;

    invoke-virtual {v0, v2}, Lcom/android/common/ui/NubiaProgressWheel;->setVisibility(I)V

    .line 344
    iget-object v0, p0, Lcom/android/lightpainting/e;->atO:Lcom/android/common/ui/MultiFunctionImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/common/ui/MultiFunctionImageView;->EC(Lcom/android/common/ui/af;)V

    .line 345
    iget-object v0, p0, Lcom/android/lightpainting/e;->atO:Lcom/android/common/ui/MultiFunctionImageView;

    sget-object v1, Lcom/android/common/ui/MultiFunctionImageView$Function;->An:Lcom/android/common/ui/MultiFunctionImageView$Function;

    invoke-virtual {v0, v1}, Lcom/android/common/ui/MultiFunctionImageView;->Ez(Lcom/android/common/ui/MultiFunctionImageView$Function;)V

    .line 340
    :goto_1b
    return-void

    .line 347
    :cond_1c
    iget-object v0, p0, Lcom/android/lightpainting/e;->atS:Lcom/android/common/ui/NubiaProgressWheel;

    invoke-virtual {v0}, Lcom/android/common/ui/NubiaProgressWheel;->stop()V

    .line 348
    iget-object v0, p0, Lcom/android/lightpainting/e;->atS:Lcom/android/common/ui/NubiaProgressWheel;

    invoke-virtual {v0, v2}, Lcom/android/common/ui/NubiaProgressWheel;->setVisibility(I)V

    .line 349
    iget-object v0, p0, Lcom/android/lightpainting/e;->atO:Lcom/android/common/ui/MultiFunctionImageView;

    invoke-virtual {v0}, Lcom/android/common/ui/MultiFunctionImageView;->EE()V

    .line 350
    iget-object v0, p0, Lcom/android/lightpainting/e;->atO:Lcom/android/common/ui/MultiFunctionImageView;

    sget-object v1, Lcom/android/common/ui/MultiFunctionImageView$Function;->An:Lcom/android/common/ui/MultiFunctionImageView$Function;

    invoke-virtual {v0, v1}, Lcom/android/common/ui/MultiFunctionImageView;->Ey(Lcom/android/common/ui/MultiFunctionImageView$Function;)V

    .line 351
    iget-object v0, p0, Lcom/android/lightpainting/e;->atO:Lcom/android/common/ui/MultiFunctionImageView;

    invoke-virtual {v0, v2}, Lcom/android/common/ui/MultiFunctionImageView;->setVisibility(I)V

    goto :goto_1b
.end method

.method protected ajt(IZ)V
    .registers 3

    .prologue
    .line 557
    invoke-super {p0, p1, p2}, Lcom/android/common/o/l;->ajt(IZ)V

    .line 558
    iput p1, p0, Lcom/android/lightpainting/e;->atZ:I

    .line 556
    return-void
.end method

.method protected aly()V
    .registers 2

    .prologue
    .line 1102
    invoke-super {p0}, Lcom/android/common/o/l;->aly()V

    .line 1103
    iget-object v0, p0, Lcom/android/lightpainting/e;->adx:Lcom/android/common/camerastate/a;

    invoke-virtual {v0}, Lcom/android/common/camerastate/a;->amI()V

    .line 1101
    return-void
.end method

.method protected alz()V
    .registers 5

    .prologue
    .line 1091
    invoke-super {p0}, Lcom/android/common/o/l;->alz()V

    .line 1092
    iget-object v0, p0, Lcom/android/lightpainting/e;->adx:Lcom/android/common/camerastate/a;

    const/4 v1, 0x4

    new-array v1, v1, [Lcom/android/common/camerastate/b;

    .line 1093
    sget-object v2, Lcom/android/common/camerastate/UIState;->afk:Lcom/android/common/camerastate/UIState;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 1094
    sget-object v2, Lcom/android/common/camerastate/FunctionState;->afr:Lcom/android/common/camerastate/FunctionState;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    .line 1095
    sget-object v2, Lcom/android/common/camerastate/DeviceState;->aeX:Lcom/android/common/camerastate/DeviceState;

    const/4 v3, 0x2

    aput-object v2, v1, v3

    .line 1096
    sget-object v2, Lcom/android/common/camerastate/DeviceState;->aeZ:Lcom/android/common/camerastate/DeviceState;

    const/4 v3, 0x3

    aput-object v2, v1, v3

    .line 1092
    invoke-virtual {v0, v1}, Lcom/android/common/camerastate/a;->amM([Lcom/android/common/camerastate/b;)V

    .line 1090
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 4

    .prologue
    .line 1026
    iget-object v0, p0, Lcom/android/lightpainting/e;->aud:Lcom/android/common/ui/RotateLayout;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/android/lightpainting/e;->aud:Lcom/android/common/ui/RotateLayout;

    invoke-virtual {v0}, Lcom/android/common/ui/RotateLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_13

    .line 1027
    iget-object v0, p0, Lcom/android/lightpainting/e;->aud:Lcom/android/common/ui/RotateLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/common/ui/RotateLayout;->setVisibility(I)V

    .line 1029
    :cond_13
    invoke-super {p0, p1}, Lcom/android/common/o/l;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public nD()Z
    .registers 5

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 819
    iget-object v0, p0, Lcom/android/lightpainting/e;->adt:Lcom/android/common/appService/W;

    if-nez v0, :cond_f

    .line 820
    const-string/jumbo v0, "LightDrawFragment"

    const-string/jumbo v1, "appService is Null"

    invoke-static {v0, v1}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 823
    :cond_f
    iget-object v0, p0, Lcom/android/lightpainting/e;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pk()Z

    move-result v0

    if-nez v0, :cond_27

    .line 824
    iget-object v0, p0, Lcom/android/lightpainting/e;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pK()Z

    move-result v0

    if-eqz v0, :cond_27

    .line 825
    invoke-virtual {p0}, Lcom/android/lightpainting/e;->alk()Lcom/android/common/camerastate/UIState;

    move-result-object v0

    sget-object v1, Lcom/android/common/camerastate/UIState;->afk:Lcom/android/common/camerastate/UIState;

    if-eq v0, v1, :cond_86

    .line 830
    :cond_27
    const-string/jumbo v0, "LightDrawFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Activity pause: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/lightpainting/e;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v2}, Lcom/android/common/appService/W;->pk()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 831
    const-string/jumbo v2, "storageLeftEnough: "

    .line 830
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 831
    iget-object v2, p0, Lcom/android/lightpainting/e;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v2}, Lcom/android/common/appService/W;->pK()Z

    move-result v2

    .line 830
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 832
    const-string/jumbo v2, "; uiState: "

    .line 830
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 832
    invoke-virtual {p0}, Lcom/android/lightpainting/e;->alk()Lcom/android/common/camerastate/UIState;

    move-result-object v2

    .line 830
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 833
    const-string/jumbo v2, "; functionState: "

    .line 830
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 833
    invoke-virtual {p0}, Lcom/android/lightpainting/e;->alp()Lcom/android/common/camerastate/FunctionState;

    move-result-object v2

    .line 830
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 834
    const-string/jumbo v2, "; DeviceState: "

    .line 830
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 834
    invoke-virtual {p0}, Lcom/android/lightpainting/e;->alo()Lcom/android/common/camerastate/DeviceState;

    move-result-object v2

    .line 830
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 835
    return v3

    .line 826
    :cond_86
    invoke-virtual {p0}, Lcom/android/lightpainting/e;->alp()Lcom/android/common/camerastate/FunctionState;

    move-result-object v0

    sget-object v1, Lcom/android/common/camerastate/FunctionState;->afr:Lcom/android/common/camerastate/FunctionState;

    if-eq v0, v1, :cond_96

    .line 827
    invoke-virtual {p0}, Lcom/android/lightpainting/e;->alp()Lcom/android/common/camerastate/FunctionState;

    move-result-object v0

    sget-object v1, Lcom/android/common/camerastate/FunctionState;->afv:Lcom/android/common/camerastate/FunctionState;

    if-ne v0, v1, :cond_27

    .line 828
    :cond_96
    invoke-virtual {p0}, Lcom/android/lightpainting/e;->alo()Lcom/android/common/camerastate/DeviceState;

    move-result-object v0

    sget-object v1, Lcom/android/common/camerastate/DeviceState;->aeX:Lcom/android/common/camerastate/DeviceState;

    if-eq v0, v1, :cond_a6

    .line 829
    invoke-virtual {p0}, Lcom/android/lightpainting/e;->alo()Lcom/android/common/camerastate/DeviceState;

    move-result-object v0

    sget-object v1, Lcom/android/common/camerastate/DeviceState;->aeZ:Lcom/android/common/camerastate/DeviceState;

    if-ne v0, v1, :cond_27

    .line 838
    :cond_a6
    iget v0, p0, Lcom/android/lightpainting/e;->mState:I

    packed-switch v0, :pswitch_data_dc

    .line 856
    :cond_ab
    :goto_ab
    iget-object v0, p0, Lcom/android/lightpainting/e;->aud:Lcom/android/common/ui/RotateLayout;

    if-eqz v0, :cond_be

    iget-object v0, p0, Lcom/android/lightpainting/e;->aud:Lcom/android/common/ui/RotateLayout;

    invoke-virtual {v0}, Lcom/android/common/ui/RotateLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_be

    .line 857
    iget-object v0, p0, Lcom/android/lightpainting/e;->aud:Lcom/android/common/ui/RotateLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/common/ui/RotateLayout;->setVisibility(I)V

    .line 859
    :cond_be
    return v3

    .line 840
    :pswitch_bf
    invoke-direct {p0}, Lcom/android/lightpainting/e;->aFW()V

    .line 841
    invoke-direct {p0}, Lcom/android/lightpainting/e;->aGp()V

    goto :goto_ab

    .line 845
    :pswitch_c6
    invoke-direct {p0}, Lcom/android/lightpainting/e;->aGt()Z

    move-result v0

    if-eqz v0, :cond_ab

    .line 846
    invoke-virtual {p0}, Lcom/android/lightpainting/e;->aly()V

    goto :goto_ab

    .line 850
    :pswitch_d0
    iget-object v0, p0, Lcom/android/lightpainting/e;->aun:Lcom/android/common/appService/z;

    invoke-virtual {v0, v2}, Lcom/android/common/appService/z;->lL(I)Z

    move-result v0

    if-eqz v0, :cond_ab

    .line 851
    invoke-direct {p0}, Lcom/android/lightpainting/e;->aGs()V

    goto :goto_ab

    .line 838
    :pswitch_data_dc
    .packed-switch 0x0
        :pswitch_bf
        :pswitch_d0
        :pswitch_c6
    .end packed-switch
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .registers 2

    .prologue
    .line 1021
    invoke-super {p0, p1}, Lcom/android/common/o/l;->onActivityCreated(Landroid/os/Bundle;)V

    .line 1020
    return-void
.end method

.method public onBackPressed()Z
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 776
    invoke-direct {p0}, Lcom/android/lightpainting/e;->aGt()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 777
    invoke-virtual {p0}, Lcom/android/lightpainting/e;->aly()V

    .line 778
    return v1

    .line 780
    :cond_b
    iget-object v0, p0, Lcom/android/lightpainting/e;->ats:Lcom/android/common/CameraBufferManager;

    if-eqz v0, :cond_1b

    .line 781
    iget-object v0, p0, Lcom/android/lightpainting/e;->aun:Lcom/android/common/appService/z;

    invoke-virtual {v0, v1}, Lcom/android/common/appService/z;->lL(I)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 782
    invoke-direct {p0}, Lcom/android/lightpainting/e;->aFG()V

    .line 784
    :cond_1a
    return v1

    .line 786
    :cond_1b
    invoke-super {p0}, Lcom/android/common/o/l;->onBackPressed()Z

    move-result v0

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 3

    .prologue
    .line 435
    invoke-super {p0, p1}, Lcom/android/common/o/l;->onCreate(Landroid/os/Bundle;)V

    .line 436
    iget-boolean v0, p0, Lcom/android/lightpainting/e;->adu:Z

    if-eqz v0, :cond_8

    return-void

    .line 434
    :cond_8
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 6

    .prologue
    .line 227
    invoke-super {p0, p1, p2, p3}, Lcom/android/common/o/l;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    .line 228
    iget-boolean v0, p0, Lcom/android/lightpainting/e;->adu:Z

    if-eqz v0, :cond_9

    .line 229
    const/4 v0, 0x0

    return-object v0

    .line 231
    :cond_9
    const v0, 0x7f0a0391

    invoke-virtual {p0, v0}, Lcom/android/lightpainting/e;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/lightpainting/e;->auc:Ljava/lang/String;

    .line 232
    const v0, 0x7f0a0392

    invoke-virtual {p0, v0}, Lcom/android/lightpainting/e;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/lightpainting/e;->aum:Ljava/lang/String;

    .line 233
    const v0, 0x7f0a0393

    invoke-virtual {p0, v0}, Lcom/android/lightpainting/e;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/lightpainting/e;->atB:Ljava/lang/String;

    .line 234
    new-instance v0, Lcom/android/common/appService/z;

    invoke-virtual {p0}, Lcom/android/lightpainting/e;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/common/appService/z;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/lightpainting/e;->aun:Lcom/android/common/appService/z;

    .line 236
    const v0, 0x7f040002

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 237
    invoke-direct {p0, v0}, Lcom/android/lightpainting/e;->aFX(Landroid/view/View;)V

    .line 238
    return-object v0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 4

    .prologue
    .line 791
    iget v0, p0, Lcom/android/lightpainting/e;->mState:I

    if-eqz v0, :cond_a

    .line 792
    const/16 v0, 0x52

    if-ne p1, v0, :cond_a

    .line 793
    const/4 v0, 0x1

    return v0

    .line 795
    :cond_a
    invoke-super {p0, p1, p2}, Lcom/android/common/o/l;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onPause()V
    .registers 6

    .prologue
    const/4 v4, 0x1

    .line 457
    iget-boolean v0, p0, Lcom/android/lightpainting/e;->adu:Z

    if-eqz v0, :cond_9

    .line 458
    invoke-super {p0}, Lcom/android/common/o/l;->onPause()V

    .line 459
    return-void

    .line 461
    :cond_9
    iget-object v0, p0, Lcom/android/lightpainting/e;->ats:Lcom/android/common/CameraBufferManager;

    if-eqz v0, :cond_1b

    .line 462
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/lightpainting/e;->atA:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/lightpainting/e;->atA:J

    .line 463
    iget-object v0, p0, Lcom/android/lightpainting/e;->ats:Lcom/android/common/CameraBufferManager;

    invoke-direct {p0, v0}, Lcom/android/lightpainting/e;->aGd(Lcom/android/common/CameraBufferManager;)V

    .line 465
    :cond_1b
    iget-object v0, p0, Lcom/android/lightpainting/e;->atQ:Lcom/android/common/ui/J;

    invoke-virtual {v0}, Lcom/android/common/ui/J;->release()V

    .line 466
    invoke-direct {p0}, Lcom/android/lightpainting/e;->aGt()Z

    .line 467
    invoke-direct {p0}, Lcom/android/lightpainting/e;->aGu()V

    .line 468
    invoke-direct {p0}, Lcom/android/lightpainting/e;->aGl()V

    .line 469
    invoke-direct {p0}, Lcom/android/lightpainting/e;->aGv()V

    .line 470
    invoke-direct {p0, v4}, Lcom/android/lightpainting/e;->aGw(Z)V

    .line 471
    invoke-virtual {p0}, Lcom/android/lightpainting/e;->releaseBuffer()V

    .line 472
    invoke-direct {p0}, Lcom/android/lightpainting/e;->aGc()V

    .line 473
    iget-object v0, p0, Lcom/android/lightpainting/e;->adt:Lcom/android/common/appService/W;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/common/appService/W;->sQ(I)V

    .line 474
    invoke-direct {p0}, Lcom/android/lightpainting/e;->aGb()V

    .line 477
    :try_start_3e
    iget-object v0, p0, Lcom/android/lightpainting/e;->atP:Lcom/android/lightpainting/h;

    const/16 v1, 0x4a

    invoke-virtual {v0, v1}, Lcom/android/lightpainting/h;->removeMessages(I)V

    .line 478
    iget-object v0, p0, Lcom/android/lightpainting/e;->atP:Lcom/android/lightpainting/h;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/lightpainting/h;->removeMessages(I)V

    .line 479
    iget-object v0, p0, Lcom/android/lightpainting/e;->atP:Lcom/android/lightpainting/h;

    const/16 v1, 0x6a

    invoke-virtual {v0, v1}, Lcom/android/lightpainting/h;->removeMessages(I)V
    :try_end_52
    .catch Ljava/lang/NullPointerException; {:try_start_3e .. :try_end_52} :catch_56

    .line 483
    :goto_52
    invoke-super {p0}, Lcom/android/common/o/l;->onPause()V

    .line 456
    return-void

    .line 480
    :catch_56
    move-exception v0

    .line 481
    const-string/jumbo v0, "LightDrawFragment"

    const-string/jumbo v1, "onpause openComputeFrameInterval failed"

    invoke-static {v0, v1}, Lcom/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_52
.end method

.method public onResume()V
    .registers 3

    .prologue
    .line 442
    invoke-super {p0}, Lcom/android/common/o/l;->onResume()V

    .line 443
    iget-boolean v0, p0, Lcom/android/lightpainting/e;->adu:Z

    if-eqz v0, :cond_8

    return-void

    .line 445
    :cond_8
    invoke-direct {p0}, Lcom/android/lightpainting/e;->aGi()V

    .line 446
    invoke-virtual {p0}, Lcom/android/lightpainting/e;->alk()Lcom/android/common/camerastate/UIState;

    move-result-object v0

    sget-object v1, Lcom/android/common/camerastate/UIState;->afl:Lcom/android/common/camerastate/UIState;

    if-eq v0, v1, :cond_1a

    .line 447
    invoke-virtual {p0}, Lcom/android/lightpainting/e;->alq()V

    .line 448
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/lightpainting/e;->aFE(Z)V

    .line 450
    :cond_1a
    invoke-direct {p0}, Lcom/android/lightpainting/e;->aFU()V

    .line 451
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/lightpainting/e;->mState:I

    .line 441
    return-void
.end method

.method public releaseBuffer()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 494
    iget-object v0, p0, Lcom/android/lightpainting/e;->ats:Lcom/android/common/CameraBufferManager;

    if-eqz v0, :cond_c

    .line 495
    iget-object v0, p0, Lcom/android/lightpainting/e;->ats:Lcom/android/common/CameraBufferManager;

    invoke-virtual {v0}, Lcom/android/common/CameraBufferManager;->releaseSlowShuttleBuffer()V

    .line 496
    iput-object v1, p0, Lcom/android/lightpainting/e;->ats:Lcom/android/common/CameraBufferManager;

    .line 493
    :cond_c
    return-void
.end method
