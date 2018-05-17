.class public Lcom/android/trajectory/a;
.super Lcom/android/common/o/l;
.source "SourceFile"

# interfaces
.implements Lcom/android/camera/Trajectory/a;
.implements Lcom/android/common/ui/u;


# static fields
.field private static final arJ:[I

.field private static final arK:[I

.field private static final arL:[I


# instance fields
.field protected arM:Lcom/android/common/ui/RotateImageView;

.field private arN:Landroid/widget/SeekBar$OnSeekBarChangeListener;

.field private arO:Lcom/android/common/ui/RotateLayout;

.field private arP:Lcom/android/common/ui/RotateLayout;

.field private arQ:Lcom/android/common/ui/RotateLayout;

.field private arR:Landroid/widget/SeekBar;

.field private arS:Landroid/widget/TextView;

.field private arT:I

.field private arU:Landroid/widget/SeekBar$OnSeekBarChangeListener;

.field private arV:[I

.field private arW:Lcom/android/common/ui/RotateLayout;

.field private arX:Lcom/android/common/ui/RotateLayout;

.field private arY:Lcom/android/common/ui/RotateLayout;

.field private arZ:Landroid/widget/SeekBar;

.field private asA:Landroid/widget/TextView;

.field private asB:Lcom/android/common/ui/RotateLayout;

.field private asC:Landroid/widget/RelativeLayout;

.field private asD:Landroid/widget/ImageView;

.field private asE:Landroid/widget/SimpleAdapter;

.field private asF:I

.field private asG:Z

.field private asH:[Landroid/graphics/Bitmap;

.field private asI:Landroid/graphics/Bitmap;

.field private asJ:Lcom/android/common/ui/RotateLayout;

.field private asK:Lcom/android/camera/Trajectory/NubiaTrajectory;

.field private asL:Landroid/widget/RelativeLayout;

.field private asM:Landroid/widget/GridView;

.field private asN:Landroid/widget/HorizontalScrollView;

.field private asO:Landroid/widget/RelativeLayout;

.field private asP:Lcom/android/common/ui/MultiFunctionImageView;

.field private asQ:I

.field private asR:Z

.field private asa:Landroid/widget/TextView;

.field protected asb:Lcom/android/common/ui/RotateImageView;

.field protected asc:Lcom/android/common/ui/RotateImageView;

.field private asd:[Ljava/lang/String;

.field private final ase:Landroid/os/Handler;

.field private asf:I

.field asg:Ljava/util/ArrayList;

.field private ash:I

.field private asi:Z

.field private asj:Z

.field private ask:Z

.field private asl:Z

.field private asm:Z

.field private asn:Z

.field private aso:[I

.field private asp:I

.field private asq:F

.field private asr:[Z

.field private ass:Ljava/lang/Thread;

.field private ast:Landroid/graphics/Bitmap;

.field private asu:Landroid/view/View;

.field private asv:Ljava/lang/Thread;

.field private asw:F

.field private asx:Ljava/lang/Thread;

.field private asy:Landroid/widget/LinearLayout;

.field private asz:Landroid/graphics/Bitmap;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/16 v1, 0xb

    .line 113
    const/16 v0, 0x8

    new-array v0, v0, [I

    fill-array-data v0, :array_1a

    sput-object v0, Lcom/android/trajectory/a;->arL:[I

    .line 114
    new-array v0, v1, [I

    fill-array-data v0, :array_2e

    sput-object v0, Lcom/android/trajectory/a;->arK:[I

    .line 116
    new-array v0, v1, [I

    fill-array-data v0, :array_48

    sput-object v0, Lcom/android/trajectory/a;->arJ:[I

    .line 97
    #disallowed odex opcode
    #return-void-no-barrier
    nop

    .line 113
    :array_1a
    .array-data 4
        0x1
        0x3
        0x5
        0x7
        0x9
        0xb
        0xd
        0xf
    .end array-data

    .line 114
    :array_2e
    .array-data 4
        0x1
        0x2
        0x3
        0x4
        0x5
        0x6
        0x7
        0x8
        0xa
        0xc
        0xf
    .end array-data

    .line 116
    :array_48
    .array-data 4
        0x1
        0x4
        0x6
        0x8
        0x9
        0xa
        0xb
        0xc
        0xd
        0xe
        0xf
    .end array-data
.end method

.method public constructor <init>()V
    .registers 6

    .prologue
    const/16 v4, 0xf

    const/4 v3, 0x5

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 232
    invoke-direct {p0}, Lcom/android/common/o/l;-><init>()V

    .line 118
    iput-object v1, p0, Lcom/android/trajectory/a;->aso:[I

    .line 122
    iput-object v1, p0, Lcom/android/trajectory/a;->asK:Lcom/android/camera/Trajectory/NubiaTrajectory;

    .line 123
    iput-object v1, p0, Lcom/android/trajectory/a;->asD:Landroid/widget/ImageView;

    .line 124
    iput-object v1, p0, Lcom/android/trajectory/a;->asP:Lcom/android/common/ui/MultiFunctionImageView;

    .line 126
    iput v2, p0, Lcom/android/trajectory/a;->asp:I

    .line 127
    iput-boolean v2, p0, Lcom/android/trajectory/a;->asR:Z

    .line 128
    iput-object v1, p0, Lcom/android/trajectory/a;->asN:Landroid/widget/HorizontalScrollView;

    .line 129
    iput-object v1, p0, Lcom/android/trajectory/a;->asM:Landroid/widget/GridView;

    .line 130
    iput-object v1, p0, Lcom/android/trajectory/a;->asO:Landroid/widget/RelativeLayout;

    .line 131
    iput-object v1, p0, Lcom/android/trajectory/a;->asg:Ljava/util/ArrayList;

    .line 132
    iput-object v1, p0, Lcom/android/trajectory/a;->asE:Landroid/widget/SimpleAdapter;

    .line 133
    iput-object v1, p0, Lcom/android/trajectory/a;->asr:[Z

    .line 134
    iput-object v1, p0, Lcom/android/trajectory/a;->asH:[Landroid/graphics/Bitmap;

    .line 135
    iput-object v1, p0, Lcom/android/trajectory/a;->asz:Landroid/graphics/Bitmap;

    .line 136
    const/high16 v0, 0x42b40000    # 90.0f

    iput v0, p0, Lcom/android/trajectory/a;->asw:F

    .line 137
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/trajectory/a;->asq:F

    .line 138
    iput v4, p0, Lcom/android/trajectory/a;->arT:I

    .line 139
    new-instance v0, Lcom/android/trajectory/c;

    invoke-direct {v0, p0, v1}, Lcom/android/trajectory/c;-><init>(Lcom/android/trajectory/a;Lcom/android/trajectory/c;)V

    iput-object v0, p0, Lcom/android/trajectory/a;->ase:Landroid/os/Handler;

    .line 140
    iput-object v1, p0, Lcom/android/trajectory/a;->asd:[Ljava/lang/String;

    .line 145
    iput-object v1, p0, Lcom/android/trajectory/a;->ast:Landroid/graphics/Bitmap;

    .line 146
    iput-object v1, p0, Lcom/android/trajectory/a;->asI:Landroid/graphics/Bitmap;

    .line 149
    iput-object v1, p0, Lcom/android/trajectory/a;->asv:Ljava/lang/Thread;

    .line 150
    iput-object v1, p0, Lcom/android/trajectory/a;->asx:Ljava/lang/Thread;

    .line 151
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/trajectory/a;->asG:Z

    .line 152
    iput-object v1, p0, Lcom/android/trajectory/a;->asy:Landroid/widget/LinearLayout;

    .line 153
    iput-object v1, p0, Lcom/android/trajectory/a;->arW:Lcom/android/common/ui/RotateLayout;

    .line 154
    iput-object v1, p0, Lcom/android/trajectory/a;->asa:Landroid/widget/TextView;

    .line 155
    iput-object v1, p0, Lcom/android/trajectory/a;->arZ:Landroid/widget/SeekBar;

    .line 156
    iput-object v1, p0, Lcom/android/trajectory/a;->arY:Lcom/android/common/ui/RotateLayout;

    .line 157
    iput-object v1, p0, Lcom/android/trajectory/a;->arX:Lcom/android/common/ui/RotateLayout;

    .line 158
    iput-object v1, p0, Lcom/android/trajectory/a;->asL:Landroid/widget/RelativeLayout;

    .line 159
    iput-object v1, p0, Lcom/android/trajectory/a;->asc:Lcom/android/common/ui/RotateImageView;

    .line 160
    iput-object v1, p0, Lcom/android/trajectory/a;->arM:Lcom/android/common/ui/RotateImageView;

    .line 161
    iput-object v1, p0, Lcom/android/trajectory/a;->asb:Lcom/android/common/ui/RotateImageView;

    .line 162
    iput-object v1, p0, Lcom/android/trajectory/a;->asu:Landroid/view/View;

    .line 163
    const/16 v0, 0xa

    filled-new-array {v3, v0, v4}, [I

    move-result-object v0

    iput-object v0, p0, Lcom/android/trajectory/a;->arV:[I

    .line 165
    iput v3, p0, Lcom/android/trajectory/a;->asF:I

    .line 166
    iput-boolean v2, p0, Lcom/android/trajectory/a;->asl:Z

    .line 167
    iput-boolean v2, p0, Lcom/android/trajectory/a;->ask:Z

    .line 168
    iput-boolean v2, p0, Lcom/android/trajectory/a;->asi:Z

    .line 169
    iput-boolean v2, p0, Lcom/android/trajectory/a;->asn:Z

    .line 171
    new-instance v0, Lcom/android/trajectory/k;

    invoke-direct {v0, p0}, Lcom/android/trajectory/k;-><init>(Lcom/android/trajectory/a;)V

    iput-object v0, p0, Lcom/android/trajectory/a;->arU:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    .line 194
    iput-object v1, p0, Lcom/android/trajectory/a;->arO:Lcom/android/common/ui/RotateLayout;

    .line 195
    iput-object v1, p0, Lcom/android/trajectory/a;->arS:Landroid/widget/TextView;

    .line 196
    iput-object v1, p0, Lcom/android/trajectory/a;->arR:Landroid/widget/SeekBar;

    .line 197
    iput-object v1, p0, Lcom/android/trajectory/a;->arQ:Lcom/android/common/ui/RotateLayout;

    .line 198
    iput-object v1, p0, Lcom/android/trajectory/a;->arP:Lcom/android/common/ui/RotateLayout;

    .line 199
    new-instance v0, Lcom/android/trajectory/l;

    invoke-direct {v0, p0}, Lcom/android/trajectory/l;-><init>(Lcom/android/trajectory/a;)V

    iput-object v0, p0, Lcom/android/trajectory/a;->arN:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    .line 221
    iput-object v1, p0, Lcom/android/trajectory/a;->asB:Lcom/android/common/ui/RotateLayout;

    .line 222
    iput-object v1, p0, Lcom/android/trajectory/a;->asA:Landroid/widget/TextView;

    .line 223
    iput-object v1, p0, Lcom/android/trajectory/a;->asJ:Lcom/android/common/ui/RotateLayout;

    .line 225
    iput-object v1, p0, Lcom/android/trajectory/a;->asC:Landroid/widget/RelativeLayout;

    .line 858
    iput-boolean v2, p0, Lcom/android/trajectory/a;->asm:Z

    .line 859
    iput-boolean v2, p0, Lcom/android/trajectory/a;->asj:Z

    .line 860
    iput-object v1, p0, Lcom/android/trajectory/a;->ass:Ljava/lang/Thread;

    .line 231
    return-void
.end method

.method public constructor <init>(I)V
    .registers 7

    .prologue
    const/16 v4, 0xf

    const/4 v3, 0x5

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 228
    invoke-direct {p0, p1}, Lcom/android/common/o/l;-><init>(I)V

    .line 118
    iput-object v1, p0, Lcom/android/trajectory/a;->aso:[I

    .line 122
    iput-object v1, p0, Lcom/android/trajectory/a;->asK:Lcom/android/camera/Trajectory/NubiaTrajectory;

    .line 123
    iput-object v1, p0, Lcom/android/trajectory/a;->asD:Landroid/widget/ImageView;

    .line 124
    iput-object v1, p0, Lcom/android/trajectory/a;->asP:Lcom/android/common/ui/MultiFunctionImageView;

    .line 126
    iput v2, p0, Lcom/android/trajectory/a;->asp:I

    .line 127
    iput-boolean v2, p0, Lcom/android/trajectory/a;->asR:Z

    .line 128
    iput-object v1, p0, Lcom/android/trajectory/a;->asN:Landroid/widget/HorizontalScrollView;

    .line 129
    iput-object v1, p0, Lcom/android/trajectory/a;->asM:Landroid/widget/GridView;

    .line 130
    iput-object v1, p0, Lcom/android/trajectory/a;->asO:Landroid/widget/RelativeLayout;

    .line 131
    iput-object v1, p0, Lcom/android/trajectory/a;->asg:Ljava/util/ArrayList;

    .line 132
    iput-object v1, p0, Lcom/android/trajectory/a;->asE:Landroid/widget/SimpleAdapter;

    .line 133
    iput-object v1, p0, Lcom/android/trajectory/a;->asr:[Z

    .line 134
    iput-object v1, p0, Lcom/android/trajectory/a;->asH:[Landroid/graphics/Bitmap;

    .line 135
    iput-object v1, p0, Lcom/android/trajectory/a;->asz:Landroid/graphics/Bitmap;

    .line 136
    const/high16 v0, 0x42b40000    # 90.0f

    iput v0, p0, Lcom/android/trajectory/a;->asw:F

    .line 137
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/trajectory/a;->asq:F

    .line 138
    iput v4, p0, Lcom/android/trajectory/a;->arT:I

    .line 139
    new-instance v0, Lcom/android/trajectory/c;

    invoke-direct {v0, p0, v1}, Lcom/android/trajectory/c;-><init>(Lcom/android/trajectory/a;Lcom/android/trajectory/c;)V

    iput-object v0, p0, Lcom/android/trajectory/a;->ase:Landroid/os/Handler;

    .line 140
    iput-object v1, p0, Lcom/android/trajectory/a;->asd:[Ljava/lang/String;

    .line 145
    iput-object v1, p0, Lcom/android/trajectory/a;->ast:Landroid/graphics/Bitmap;

    .line 146
    iput-object v1, p0, Lcom/android/trajectory/a;->asI:Landroid/graphics/Bitmap;

    .line 149
    iput-object v1, p0, Lcom/android/trajectory/a;->asv:Ljava/lang/Thread;

    .line 150
    iput-object v1, p0, Lcom/android/trajectory/a;->asx:Ljava/lang/Thread;

    .line 151
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/trajectory/a;->asG:Z

    .line 152
    iput-object v1, p0, Lcom/android/trajectory/a;->asy:Landroid/widget/LinearLayout;

    .line 153
    iput-object v1, p0, Lcom/android/trajectory/a;->arW:Lcom/android/common/ui/RotateLayout;

    .line 154
    iput-object v1, p0, Lcom/android/trajectory/a;->asa:Landroid/widget/TextView;

    .line 155
    iput-object v1, p0, Lcom/android/trajectory/a;->arZ:Landroid/widget/SeekBar;

    .line 156
    iput-object v1, p0, Lcom/android/trajectory/a;->arY:Lcom/android/common/ui/RotateLayout;

    .line 157
    iput-object v1, p0, Lcom/android/trajectory/a;->arX:Lcom/android/common/ui/RotateLayout;

    .line 158
    iput-object v1, p0, Lcom/android/trajectory/a;->asL:Landroid/widget/RelativeLayout;

    .line 159
    iput-object v1, p0, Lcom/android/trajectory/a;->asc:Lcom/android/common/ui/RotateImageView;

    .line 160
    iput-object v1, p0, Lcom/android/trajectory/a;->arM:Lcom/android/common/ui/RotateImageView;

    .line 161
    iput-object v1, p0, Lcom/android/trajectory/a;->asb:Lcom/android/common/ui/RotateImageView;

    .line 162
    iput-object v1, p0, Lcom/android/trajectory/a;->asu:Landroid/view/View;

    .line 163
    const/16 v0, 0xa

    filled-new-array {v3, v0, v4}, [I

    move-result-object v0

    iput-object v0, p0, Lcom/android/trajectory/a;->arV:[I

    .line 165
    iput v3, p0, Lcom/android/trajectory/a;->asF:I

    .line 166
    iput-boolean v2, p0, Lcom/android/trajectory/a;->asl:Z

    .line 167
    iput-boolean v2, p0, Lcom/android/trajectory/a;->ask:Z

    .line 168
    iput-boolean v2, p0, Lcom/android/trajectory/a;->asi:Z

    .line 169
    iput-boolean v2, p0, Lcom/android/trajectory/a;->asn:Z

    .line 171
    new-instance v0, Lcom/android/trajectory/k;

    invoke-direct {v0, p0}, Lcom/android/trajectory/k;-><init>(Lcom/android/trajectory/a;)V

    iput-object v0, p0, Lcom/android/trajectory/a;->arU:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    .line 194
    iput-object v1, p0, Lcom/android/trajectory/a;->arO:Lcom/android/common/ui/RotateLayout;

    .line 195
    iput-object v1, p0, Lcom/android/trajectory/a;->arS:Landroid/widget/TextView;

    .line 196
    iput-object v1, p0, Lcom/android/trajectory/a;->arR:Landroid/widget/SeekBar;

    .line 197
    iput-object v1, p0, Lcom/android/trajectory/a;->arQ:Lcom/android/common/ui/RotateLayout;

    .line 198
    iput-object v1, p0, Lcom/android/trajectory/a;->arP:Lcom/android/common/ui/RotateLayout;

    .line 199
    new-instance v0, Lcom/android/trajectory/l;

    invoke-direct {v0, p0}, Lcom/android/trajectory/l;-><init>(Lcom/android/trajectory/a;)V

    iput-object v0, p0, Lcom/android/trajectory/a;->arN:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    .line 221
    iput-object v1, p0, Lcom/android/trajectory/a;->asB:Lcom/android/common/ui/RotateLayout;

    .line 222
    iput-object v1, p0, Lcom/android/trajectory/a;->asA:Landroid/widget/TextView;

    .line 223
    iput-object v1, p0, Lcom/android/trajectory/a;->asJ:Lcom/android/common/ui/RotateLayout;

    .line 225
    iput-object v1, p0, Lcom/android/trajectory/a;->asC:Landroid/widget/RelativeLayout;

    .line 858
    iput-boolean v2, p0, Lcom/android/trajectory/a;->asm:Z

    .line 859
    iput-boolean v2, p0, Lcom/android/trajectory/a;->asj:Z

    .line 860
    iput-object v1, p0, Lcom/android/trajectory/a;->ass:Ljava/lang/Thread;

    .line 227
    return-void
.end method

.method private PreRegister()V
    .registers 3

    .prologue
    .line 862
    new-instance v0, Lcom/android/trajectory/p;

    invoke-direct {v0, p0}, Lcom/android/trajectory/p;-><init>(Lcom/android/trajectory/a;)V

    iput-object v0, p0, Lcom/android/trajectory/a;->ass:Ljava/lang/Thread;

    .line 885
    const-string/jumbo v0, "TrajectoryFragment"

    const-string/jumbo v1, "PreRegister Start"

    invoke-static {v0, v1}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 886
    iget-object v0, p0, Lcom/android/trajectory/a;->ass:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 861
    return-void
.end method

.method private aDL([I)V
    .registers 4

    .prologue
    .line 808
    iget-object v0, p0, Lcom/android/trajectory/a;->asK:Lcom/android/camera/Trajectory/NubiaTrajectory;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/camera/Trajectory/NubiaTrajectory;->ayv(Z)V

    .line 809
    invoke-direct {p0}, Lcom/android/trajectory/a;->aEq()V

    .line 810
    new-instance v0, Lcom/android/trajectory/o;

    invoke-direct {v0, p0, p1}, Lcom/android/trajectory/o;-><init>(Lcom/android/trajectory/a;[I)V

    invoke-virtual {v0}, Lcom/android/trajectory/o;->start()V

    .line 807
    return-void
.end method

.method private aDM(Z)V
    .registers 5

    .prologue
    const/4 v2, 0x0

    .line 1140
    invoke-direct {p0}, Lcom/android/trajectory/a;->aEb()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 1141
    const-string/jumbo v0, "TrajectoryFragment"

    const-string/jumbo v1, "need cancel stop: true. wait..."

    invoke-static {v0, v1}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 1142
    return-void

    .line 1144
    :cond_11
    const/4 v0, 0x5

    iput v0, p0, Lcom/android/trajectory/a;->asF:I

    .line 1145
    iput-boolean v2, p0, Lcom/android/trajectory/a;->asl:Z

    .line 1146
    iget-object v0, p0, Lcom/android/trajectory/a;->asK:Lcom/android/camera/Trajectory/NubiaTrajectory;

    invoke-virtual {v0}, Lcom/android/camera/Trajectory/NubiaTrajectory;->stop()V

    .line 1147
    iget-object v0, p0, Lcom/android/trajectory/a;->adt:Lcom/android/common/appService/W;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/android/common/appService/W;->pz(I)V

    .line 1148
    iget-object v0, p0, Lcom/android/trajectory/a;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pJ()Lcom/android/common/independentFocusExposure/g;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/common/independentFocusExposure/g;->dy(Z)V

    .line 1149
    iget-object v0, p0, Lcom/android/trajectory/a;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pl()Lcom/android/common/camerastate/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/camerastate/a;->amI()V

    .line 1150
    iget-object v0, p0, Lcom/android/trajectory/a;->adt:Lcom/android/common/appService/W;

    if-eqz v0, :cond_41

    .line 1151
    invoke-virtual {p0}, Lcom/android/trajectory/a;->alo()Lcom/android/common/camerastate/DeviceState;

    move-result-object v0

    sget-object v1, Lcom/android/common/camerastate/DeviceState;->aeY:Lcom/android/common/camerastate/DeviceState;

    if-ne v0, v1, :cond_41

    .line 1152
    if-eqz p1, :cond_47

    .line 1156
    :cond_41
    :goto_41
    iget v0, p0, Lcom/android/trajectory/a;->asF:I

    invoke-direct {p0, v0}, Lcom/android/trajectory/a;->aEr(I)V

    .line 1139
    return-void

    .line 1153
    :cond_47
    iget-boolean v0, p0, Lcom/android/trajectory/a;->adv:Z

    if-nez v0, :cond_41

    .line 1154
    iget-object v0, p0, Lcom/android/trajectory/a;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pA()V

    goto :goto_41
.end method

.method private aDN(Ljava/lang/String;Ljava/lang/String;JIILandroid/location/Location;)Landroid/content/ContentValues;
    .registers 13

    .prologue
    .line 1073
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1074
    const-string/jumbo v1, "title"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1075
    const-string/jumbo v1, "datetaken"

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1076
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

    .line 1077
    const-string/jumbo v1, "width"

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1078
    const-string/jumbo v1, "height"

    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1079
    if-eqz p7, :cond_6c

    .line 1080
    const-string/jumbo v1, "latitude"

    invoke-virtual {p7}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 1081
    const-string/jumbo v1, "longitude"

    invoke-virtual {p7}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 1083
    :cond_6c
    return-object v0
.end method

.method private aDO()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 386
    iget-object v0, p0, Lcom/android/trajectory/a;->ast:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/android/trajectory/a;->ast:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 390
    :cond_d
    :goto_d
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 385
    return-void

    .line 387
    :cond_11
    iget-object v0, p0, Lcom/android/trajectory/a;->ast:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 388
    iput-object v1, p0, Lcom/android/trajectory/a;->ast:Landroid/graphics/Bitmap;

    goto :goto_d
.end method

.method private aDP()V
    .registers 5

    .prologue
    const/4 v0, 0x0

    const/4 v3, 0x0

    .line 394
    iget-object v1, p0, Lcom/android/trajectory/a;->asD:Landroid/widget/ImageView;

    if-eqz v1, :cond_12

    .line 395
    iget-object v1, p0, Lcom/android/trajectory/a;->asD:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 396
    iget-object v1, p0, Lcom/android/trajectory/a;->asD:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 398
    :cond_12
    iget-object v1, p0, Lcom/android/trajectory/a;->asM:Landroid/widget/GridView;

    if-eqz v1, :cond_1b

    .line 399
    iget-object v1, p0, Lcom/android/trajectory/a;->asM:Landroid/widget/GridView;

    invoke-virtual {v1, v3}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 401
    :cond_1b
    iget-object v1, p0, Lcom/android/trajectory/a;->asE:Landroid/widget/SimpleAdapter;

    if-eqz v1, :cond_26

    .line 402
    iget-object v1, p0, Lcom/android/trajectory/a;->asE:Landroid/widget/SimpleAdapter;

    invoke-virtual {v1, v3}, Landroid/widget/SimpleAdapter;->setViewBinder(Landroid/widget/SimpleAdapter$ViewBinder;)V

    .line 403
    iput-object v3, p0, Lcom/android/trajectory/a;->asE:Landroid/widget/SimpleAdapter;

    .line 405
    :cond_26
    iget-object v1, p0, Lcom/android/trajectory/a;->asg:Ljava/util/ArrayList;

    if-eqz v1, :cond_37

    iget-object v1, p0, Lcom/android/trajectory/a;->asg:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_37

    .line 406
    iget-object v1, p0, Lcom/android/trajectory/a;->asg:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 408
    :cond_37
    iget-object v1, p0, Lcom/android/trajectory/a;->asH:[Landroid/graphics/Bitmap;

    if-eqz v1, :cond_64

    iget-object v1, p0, Lcom/android/trajectory/a;->asH:[Landroid/graphics/Bitmap;

    array-length v1, v1

    if-lez v1, :cond_64

    .line 409
    :goto_40
    iget-object v1, p0, Lcom/android/trajectory/a;->asH:[Landroid/graphics/Bitmap;

    array-length v1, v1

    if-ge v0, v1, :cond_64

    .line 410
    iget-object v1, p0, Lcom/android/trajectory/a;->asH:[Landroid/graphics/Bitmap;

    aget-object v1, v1, v0

    if-eqz v1, :cond_55

    iget-object v1, p0, Lcom/android/trajectory/a;->asH:[Landroid/graphics/Bitmap;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-eqz v1, :cond_58

    .line 409
    :cond_55
    :goto_55
    add-int/lit8 v0, v0, 0x1

    goto :goto_40

    .line 411
    :cond_58
    iget-object v1, p0, Lcom/android/trajectory/a;->asH:[Landroid/graphics/Bitmap;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 412
    iget-object v1, p0, Lcom/android/trajectory/a;->asH:[Landroid/graphics/Bitmap;

    aput-object v3, v1, v0

    goto :goto_55

    .line 416
    :cond_64
    iput-object v3, p0, Lcom/android/trajectory/a;->asH:[Landroid/graphics/Bitmap;

    .line 393
    return-void
.end method

.method private aDQ(I)Ljava/lang/String;
    .registers 6

    .prologue
    const/4 v1, 0x0

    .line 540
    iget-object v0, p0, Lcom/android/trajectory/a;->adt:Lcom/android/common/appService/W;

    if-eqz v0, :cond_1d

    .line 541
    iget-object v0, p0, Lcom/android/trajectory/a;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pb()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    .line 542
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const v2, 0x7f0a030f

    .line 541
    invoke-virtual {v0, v2, v1}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 544
    :cond_1d
    return-object v1
.end method

.method private aDR(I)Ljava/lang/String;
    .registers 6

    .prologue
    const/4 v1, 0x0

    .line 524
    iget-object v0, p0, Lcom/android/trajectory/a;->adt:Lcom/android/common/appService/W;

    if-eqz v0, :cond_1d

    .line 525
    iget-object v0, p0, Lcom/android/trajectory/a;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pb()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    .line 526
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const v2, 0x7f0a030c

    .line 525
    invoke-virtual {v0, v2, v1}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 528
    :cond_1d
    return-object v1
.end method

.method private aDS()I
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 980
    iget-object v1, p0, Lcom/android/trajectory/a;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v1}, Lcom/android/common/appService/W;->pv()I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/common/h;->aoQ(II)I

    move-result v1

    .line 982
    sparse-switch v1, :sswitch_data_14

    .line 993
    :goto_e
    :sswitch_e
    return v0

    .line 987
    :sswitch_f
    const/4 v0, 0x1

    .line 988
    goto :goto_e

    .line 990
    :sswitch_11
    const/4 v0, 0x2

    .line 991
    goto :goto_e

    .line 982
    nop

    :sswitch_data_14
    .sparse-switch
        0x5a -> :sswitch_e
        0xb4 -> :sswitch_f
        0x10e -> :sswitch_11
    .end sparse-switch
.end method

.method private aDT()V
    .registers 3

    .prologue
    .line 462
    iget-object v0, p0, Lcom/android/trajectory/a;->asB:Lcom/android/common/ui/RotateLayout;

    if-nez v0, :cond_5

    .line 463
    return-void

    .line 464
    :cond_5
    iget-object v0, p0, Lcom/android/trajectory/a;->asB:Lcom/android/common/ui/RotateLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/common/ui/RotateLayout;->setVisibility(I)V

    .line 461
    return-void
.end method

.method private aDU()V
    .registers 3

    .prologue
    .line 1004
    iget-object v0, p0, Lcom/android/trajectory/a;->asC:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_b

    .line 1005
    iget-object v0, p0, Lcom/android/trajectory/a;->asC:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1003
    :cond_b
    return-void
.end method

.method private aDV()V
    .registers 3

    .prologue
    .line 508
    iget-object v0, p0, Lcom/android/trajectory/a;->asJ:Lcom/android/common/ui/RotateLayout;

    if-eqz v0, :cond_b

    .line 509
    iget-object v0, p0, Lcom/android/trajectory/a;->asJ:Lcom/android/common/ui/RotateLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/common/ui/RotateLayout;->setVisibility(I)V

    .line 505
    :cond_b
    return-void
.end method

.method private aDW()V
    .registers 3

    .prologue
    .line 897
    iget-object v0, p0, Lcom/android/trajectory/a;->adt:Lcom/android/common/appService/W;

    if-nez v0, :cond_5

    .line 898
    return-void

    .line 899
    :cond_5
    iget-object v0, p0, Lcom/android/trajectory/a;->asP:Lcom/android/common/ui/MultiFunctionImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/common/ui/MultiFunctionImageView;->setVisibility(I)V

    .line 900
    iget-object v0, p0, Lcom/android/trajectory/a;->asP:Lcom/android/common/ui/MultiFunctionImageView;

    sget-object v1, Lcom/android/common/ui/MultiFunctionImageView$Function;->An:Lcom/android/common/ui/MultiFunctionImageView$Function;

    invoke-virtual {v0, v1}, Lcom/android/common/ui/MultiFunctionImageView;->Ey(Lcom/android/common/ui/MultiFunctionImageView$Function;)V

    .line 896
    return-void
.end method

.method private aDX()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 305
    iget-object v0, p0, Lcom/android/trajectory/a;->asK:Lcom/android/camera/Trajectory/NubiaTrajectory;

    if-nez v0, :cond_10

    .line 306
    new-instance v0, Lcom/android/camera/Trajectory/NubiaTrajectory;

    invoke-virtual {p0}, Lcom/android/trajectory/a;->all()Lcom/android/common/appService/W;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/android/camera/Trajectory/NubiaTrajectory;-><init>(Lcom/android/common/appService/W;Lcom/android/camera/Trajectory/a;)V

    iput-object v0, p0, Lcom/android/trajectory/a;->asK:Lcom/android/camera/Trajectory/NubiaTrajectory;

    .line 309
    :cond_10
    iget-object v0, p0, Lcom/android/trajectory/a;->asc:Lcom/android/common/ui/RotateImageView;

    new-instance v1, Lcom/android/trajectory/f;

    invoke-direct {v1, p0, v2}, Lcom/android/trajectory/f;-><init>(Lcom/android/trajectory/a;Lcom/android/trajectory/f;)V

    invoke-virtual {v0, v1}, Lcom/android/common/ui/RotateImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 310
    iget-object v0, p0, Lcom/android/trajectory/a;->arM:Lcom/android/common/ui/RotateImageView;

    new-instance v1, Lcom/android/trajectory/g;

    invoke-direct {v1, p0, v2}, Lcom/android/trajectory/g;-><init>(Lcom/android/trajectory/a;Lcom/android/trajectory/g;)V

    invoke-virtual {v0, v1}, Lcom/android/common/ui/RotateImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 311
    iget-object v0, p0, Lcom/android/trajectory/a;->asb:Lcom/android/common/ui/RotateImageView;

    new-instance v1, Lcom/android/trajectory/e;

    invoke-direct {v1, p0, v2}, Lcom/android/trajectory/e;-><init>(Lcom/android/trajectory/a;Lcom/android/trajectory/e;)V

    invoke-virtual {v0, v1}, Lcom/android/common/ui/RotateImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 313
    const/4 v0, 0x5

    iput v0, p0, Lcom/android/trajectory/a;->asF:I

    .line 314
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/trajectory/a;->asl:Z

    .line 315
    iget-object v0, p0, Lcom/android/trajectory/a;->asK:Lcom/android/camera/Trajectory/NubiaTrajectory;

    invoke-virtual {v0}, Lcom/android/camera/Trajectory/NubiaTrajectory;->stop()V

    .line 316
    iget-object v0, p0, Lcom/android/trajectory/a;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pl()Lcom/android/common/camerastate/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/camerastate/a;->amI()V

    .line 317
    iget v0, p0, Lcom/android/trajectory/a;->asF:I

    invoke-direct {p0, v0}, Lcom/android/trajectory/a;->aEr(I)V

    .line 304
    return-void
.end method

.method private aDY(Landroid/view/View;)V
    .registers 5

    .prologue
    const/4 v2, 0x0

    .line 256
    const v0, 0x7f1001df

    .line 255
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/trajectory/a;->asD:Landroid/widget/ImageView;

    .line 258
    const v0, 0x7f1001dc

    .line 257
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/HorizontalScrollView;

    iput-object v0, p0, Lcom/android/trajectory/a;->asN:Landroid/widget/HorizontalScrollView;

    .line 260
    const v0, 0x7f1001dd

    .line 259
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/GridView;

    iput-object v0, p0, Lcom/android/trajectory/a;->asM:Landroid/widget/GridView;

    .line 262
    const v0, 0x7f1001db

    .line 261
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/android/trajectory/a;->asO:Landroid/widget/RelativeLayout;

    .line 264
    const v0, 0x7f1001d0

    .line 263
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/trajectory/a;->asy:Landroid/widget/LinearLayout;

    .line 266
    const v0, 0x7f1001d1

    .line 265
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/common/ui/RotateLayout;

    iput-object v0, p0, Lcom/android/trajectory/a;->arW:Lcom/android/common/ui/RotateLayout;

    .line 268
    const v0, 0x7f1001d2

    .line 267
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/trajectory/a;->asa:Landroid/widget/TextView;

    .line 270
    const v0, 0x7f1001d3

    .line 269
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lcom/android/trajectory/a;->arZ:Landroid/widget/SeekBar;

    .line 272
    const v0, 0x7f1001d4

    .line 271
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/common/ui/RotateLayout;

    iput-object v0, p0, Lcom/android/trajectory/a;->arY:Lcom/android/common/ui/RotateLayout;

    .line 274
    const v0, 0x7f1001d5

    .line 273
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/common/ui/RotateLayout;

    iput-object v0, p0, Lcom/android/trajectory/a;->arX:Lcom/android/common/ui/RotateLayout;

    .line 276
    const v0, 0x7f1001d6

    .line 275
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/common/ui/RotateLayout;

    iput-object v0, p0, Lcom/android/trajectory/a;->arO:Lcom/android/common/ui/RotateLayout;

    .line 278
    const v0, 0x7f1001d7

    .line 277
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/trajectory/a;->arS:Landroid/widget/TextView;

    .line 280
    const v0, 0x7f1001d8

    .line 279
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lcom/android/trajectory/a;->arR:Landroid/widget/SeekBar;

    .line 282
    const v0, 0x7f1001d9

    .line 281
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/common/ui/RotateLayout;

    iput-object v0, p0, Lcom/android/trajectory/a;->arQ:Lcom/android/common/ui/RotateLayout;

    .line 284
    const v0, 0x7f1001da

    .line 283
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/common/ui/RotateLayout;

    iput-object v0, p0, Lcom/android/trajectory/a;->arP:Lcom/android/common/ui/RotateLayout;

    .line 286
    const v0, 0x7f1001c9

    .line 285
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/common/ui/RotateLayout;

    iput-object v0, p0, Lcom/android/trajectory/a;->asB:Lcom/android/common/ui/RotateLayout;

    .line 288
    const v0, 0x7f1001ca

    .line 287
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/trajectory/a;->asA:Landroid/widget/TextView;

    .line 289
    const v0, 0x7f1001e0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/android/trajectory/a;->asC:Landroid/widget/RelativeLayout;

    .line 291
    const v0, 0x7f1000f9

    .line 290
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/common/ui/RotateLayout;

    iput-object v0, p0, Lcom/android/trajectory/a;->asJ:Lcom/android/common/ui/RotateLayout;

    .line 292
    const v0, 0x7f1001cf

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/android/trajectory/a;->asL:Landroid/widget/RelativeLayout;

    .line 293
    const v0, 0x7f100046

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/common/ui/RotateImageView;

    iput-object v0, p0, Lcom/android/trajectory/a;->asc:Lcom/android/common/ui/RotateImageView;

    .line 294
    const v0, 0x7f100047

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/common/ui/RotateImageView;

    iput-object v0, p0, Lcom/android/trajectory/a;->arM:Lcom/android/common/ui/RotateImageView;

    .line 295
    const v0, 0x7f100048

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/common/ui/RotateImageView;

    iput-object v0, p0, Lcom/android/trajectory/a;->asb:Lcom/android/common/ui/RotateImageView;

    .line 296
    iget-object v0, p0, Lcom/android/trajectory/a;->asJ:Lcom/android/common/ui/RotateLayout;

    invoke-virtual {v0, v2}, Lcom/android/common/ui/RotateLayout;->setVisibility(I)V

    .line 297
    const v0, 0x7f1001de

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/trajectory/a;->asu:Landroid/view/View;

    .line 298
    const v0, 0x7f1001ac

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/common/ui/MultiFunctionImageView;

    iput-object v0, p0, Lcom/android/trajectory/a;->asP:Lcom/android/common/ui/MultiFunctionImageView;

    .line 299
    invoke-direct {p0}, Lcom/android/trajectory/a;->aDX()V

    .line 300
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/android/common/ui/h;

    .line 301
    iget-object v1, p0, Lcom/android/trajectory/a;->asc:Lcom/android/common/ui/RotateImageView;

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/android/trajectory/a;->arM:Lcom/android/common/ui/RotateImageView;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/android/trajectory/a;->asb:Lcom/android/common/ui/RotateImageView;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 300
    iput-object v0, p0, Lcom/android/trajectory/a;->adw:[Lcom/android/common/ui/h;

    .line 254
    return-void
.end method

.method private aDZ()V
    .registers 10

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 598
    iget-object v0, p0, Lcom/android/trajectory/a;->asM:Landroid/widget/GridView;

    iget v1, p0, Lcom/android/trajectory/a;->arT:I

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setNumColumns(I)V

    .line 599
    iget-object v0, p0, Lcom/android/trajectory/a;->asM:Landroid/widget/GridView;

    const/16 v1, 0x44

    invoke-static {v1}, Lcom/android/common/h;->aoT(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setColumnWidth(I)V

    .line 601
    new-instance v0, Lcom/android/trajectory/m;

    invoke-virtual {p0}, Lcom/android/trajectory/a;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/android/trajectory/a;->asg:Ljava/util/ArrayList;

    .line 602
    const/4 v1, 0x2

    new-array v5, v1, [Ljava/lang/String;

    const-string/jumbo v1, "effectIcon"

    aput-object v1, v5, v7

    .line 603
    const-string/jumbo v1, "effectTitles"

    const/4 v4, 0x1

    aput-object v1, v5, v4

    const v1, 0x7f1000b6

    .line 604
    const v4, 0x7f1001cc

    .line 603
    filled-new-array {v1, v4}, [I

    move-result-object v6

    .line 602
    const v4, 0x7f040098

    move-object v1, p0

    .line 601
    invoke-direct/range {v0 .. v6}, Lcom/android/trajectory/m;-><init>(Lcom/android/trajectory/a;Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[I)V

    iput-object v0, p0, Lcom/android/trajectory/a;->asE:Landroid/widget/SimpleAdapter;

    .line 625
    iget-object v0, p0, Lcom/android/trajectory/a;->asE:Landroid/widget/SimpleAdapter;

    new-instance v1, Lcom/android/trajectory/b;

    invoke-direct {v1, p0, v8}, Lcom/android/trajectory/b;-><init>(Lcom/android/trajectory/a;Lcom/android/trajectory/b;)V

    invoke-virtual {v0, v1}, Landroid/widget/SimpleAdapter;->setViewBinder(Landroid/widget/SimpleAdapter$ViewBinder;)V

    .line 626
    iget-object v0, p0, Lcom/android/trajectory/a;->asM:Landroid/widget/GridView;

    iget-object v1, p0, Lcom/android/trajectory/a;->asE:Landroid/widget/SimpleAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 628
    iget-object v0, p0, Lcom/android/trajectory/a;->asM:Landroid/widget/GridView;

    .line 629
    new-instance v1, Lcom/android/trajectory/n;

    invoke-direct {v1, p0}, Lcom/android/trajectory/n;-><init>(Lcom/android/trajectory/a;)V

    .line 628
    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 670
    iget-object v0, p0, Lcom/android/trajectory/a;->asM:Landroid/widget/GridView;

    invoke-virtual {v0, v7}, Landroid/widget/GridView;->setEnabled(Z)V

    .line 671
    iget-object v0, p0, Lcom/android/trajectory/a;->asN:Landroid/widget/HorizontalScrollView;

    if-eqz v0, :cond_66

    .line 672
    iget-object v0, p0, Lcom/android/trajectory/a;->asN:Landroid/widget/HorizontalScrollView;

    invoke-virtual {v0, v7, v7}, Landroid/widget/HorizontalScrollView;->scrollTo(II)V

    .line 597
    :cond_66
    return-void
.end method

.method static synthetic aEA(Lcom/android/trajectory/a;)Landroid/widget/SeekBar;
    .registers 2

    iget-object v0, p0, Lcom/android/trajectory/a;->arZ:Landroid/widget/SeekBar;

    return-object v0
.end method

.method static synthetic aEB(Lcom/android/trajectory/a;)Landroid/widget/TextView;
    .registers 2

    iget-object v0, p0, Lcom/android/trajectory/a;->asa:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic aEC(Lcom/android/trajectory/a;)[Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/android/trajectory/a;->asd:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic aED(Lcom/android/trajectory/a;)Landroid/os/Handler;
    .registers 2

    iget-object v0, p0, Lcom/android/trajectory/a;->ase:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic aEE(Lcom/android/trajectory/a;)I
    .registers 2

    iget v0, p0, Lcom/android/trajectory/a;->asf:I

    return v0
.end method

.method static synthetic aEF(Lcom/android/trajectory/a;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/trajectory/a;->asj:Z

    return v0
.end method

.method static synthetic aEG(Lcom/android/trajectory/a;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/trajectory/a;->adv:Z

    return v0
.end method

.method static synthetic aEH(Lcom/android/trajectory/a;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/trajectory/a;->asl:Z

    return v0
.end method

.method static synthetic aEI(Lcom/android/trajectory/a;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/trajectory/a;->asn:Z

    return v0
.end method

.method static synthetic aEJ(Lcom/android/trajectory/a;)[I
    .registers 2

    iget-object v0, p0, Lcom/android/trajectory/a;->aso:[I

    return-object v0
.end method

.method static synthetic aEK(Lcom/android/trajectory/a;)I
    .registers 2

    iget v0, p0, Lcom/android/trajectory/a;->asp:I

    return v0
.end method

.method static synthetic aEL(Lcom/android/trajectory/a;)[Z
    .registers 2

    iget-object v0, p0, Lcom/android/trajectory/a;->asr:[Z

    return-object v0
.end method

.method static synthetic aEM(Lcom/android/trajectory/a;)Landroid/graphics/Bitmap;
    .registers 2

    iget-object v0, p0, Lcom/android/trajectory/a;->ast:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic aEN(Lcom/android/trajectory/a;)Landroid/graphics/Bitmap;
    .registers 2

    iget-object v0, p0, Lcom/android/trajectory/a;->asz:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic aEO(Lcom/android/trajectory/a;)Landroid/widget/ImageView;
    .registers 2

    iget-object v0, p0, Lcom/android/trajectory/a;->asD:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic aEP(Lcom/android/trajectory/a;)Landroid/widget/SimpleAdapter;
    .registers 2

    iget-object v0, p0, Lcom/android/trajectory/a;->asE:Landroid/widget/SimpleAdapter;

    return-object v0
.end method

.method static synthetic aEQ(Lcom/android/trajectory/a;)I
    .registers 2

    iget v0, p0, Lcom/android/trajectory/a;->asF:I

    return v0
.end method

.method static synthetic aER(Lcom/android/trajectory/a;)[Landroid/graphics/Bitmap;
    .registers 2

    iget-object v0, p0, Lcom/android/trajectory/a;->asH:[Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic aES(Lcom/android/trajectory/a;)Lcom/android/camera/Trajectory/NubiaTrajectory;
    .registers 2

    iget-object v0, p0, Lcom/android/trajectory/a;->asK:Lcom/android/camera/Trajectory/NubiaTrajectory;

    return-object v0
.end method

.method static synthetic aET(Lcom/android/trajectory/a;)Landroid/widget/GridView;
    .registers 2

    iget-object v0, p0, Lcom/android/trajectory/a;->asM:Landroid/widget/GridView;

    return-object v0
.end method

.method static synthetic aEU(Lcom/android/trajectory/a;)Lcom/android/common/ui/MultiFunctionImageView;
    .registers 2

    iget-object v0, p0, Lcom/android/trajectory/a;->asP:Lcom/android/common/ui/MultiFunctionImageView;

    return-object v0
.end method

.method static synthetic aEV(Lcom/android/trajectory/a;)I
    .registers 2

    iget v0, p0, Lcom/android/trajectory/a;->asQ:I

    return v0
.end method

.method static synthetic aEW(Lcom/android/trajectory/a;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/trajectory/a;->asR:Z

    return v0
.end method

.method static synthetic aEX(Lcom/android/trajectory/a;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/trajectory/a;->asl:Z

    return p1
.end method

.method static synthetic aEY(Lcom/android/trajectory/a;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/trajectory/a;->asm:Z

    return p1
.end method

.method static synthetic aEZ(Lcom/android/trajectory/a;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/trajectory/a;->asn:Z

    return p1
.end method

.method private aEa()V
    .registers 4

    .prologue
    .line 421
    :try_start_0
    iget-object v0, p0, Lcom/android/trajectory/a;->ass:Ljava/lang/Thread;

    if-eqz v0, :cond_9

    .line 422
    iget-object v0, p0, Lcom/android/trajectory/a;->ass:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 424
    :cond_9
    iget-object v0, p0, Lcom/android/trajectory/a;->asv:Ljava/lang/Thread;

    if-eqz v0, :cond_12

    .line 425
    iget-object v0, p0, Lcom/android/trajectory/a;->asv:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 427
    :cond_12
    iget-object v0, p0, Lcom/android/trajectory/a;->asx:Ljava/lang/Thread;

    if-eqz v0, :cond_1b

    .line 428
    iget-object v0, p0, Lcom/android/trajectory/a;->asx:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1b} :catch_1f

    .line 433
    :cond_1b
    :goto_1b
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/trajectory/a;->asG:Z

    .line 419
    return-void

    .line 430
    :catch_1f
    move-exception v0

    .line 431
    const-string/jumbo v1, "TrajectoryFragment"

    const-string/jumbo v2, "joinThread"

    invoke-static {v1, v2, v0}, Lcom/a/a;->bvp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1b
.end method

.method private aEb()Z
    .registers 3

    .prologue
    .line 1108
    const/4 v0, 0x0

    .line 1109
    iget-object v1, p0, Lcom/android/trajectory/a;->asK:Lcom/android/camera/Trajectory/NubiaTrajectory;

    if-eqz v1, :cond_e

    iget-object v1, p0, Lcom/android/trajectory/a;->asK:Lcom/android/camera/Trajectory/NubiaTrajectory;

    invoke-virtual {v1}, Lcom/android/camera/Trajectory/NubiaTrajectory;->ayz()Z

    move-result v1

    if-eqz v1, :cond_e

    .line 1110
    const/4 v0, 0x1

    .line 1112
    :cond_e
    return v0
.end method

.method public static aEc()Lcom/android/trajectory/a;
    .registers 2

    .prologue
    .line 345
    new-instance v0, Lcom/android/trajectory/a;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/android/trajectory/a;-><init>(I)V

    .line 346
    return-object v0
.end method

.method private aEd([Landroid/graphics/Bitmap;)V
    .registers 4

    .prologue
    .line 350
    invoke-direct {p0}, Lcom/android/trajectory/a;->aDZ()V

    .line 351
    iget-object v0, p0, Lcom/android/trajectory/a;->asO:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 349
    return-void
.end method

.method private aEe()V
    .registers 3

    .prologue
    .line 1160
    iget-object v0, p0, Lcom/android/trajectory/a;->adt:Lcom/android/common/appService/W;

    if-eqz v0, :cond_24

    .line 1161
    iget-object v0, p0, Lcom/android/trajectory/a;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pJ()Lcom/android/common/independentFocusExposure/g;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/common/independentFocusExposure/g;->dy(Z)V

    .line 1162
    iget-object v0, p0, Lcom/android/trajectory/a;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pl()Lcom/android/common/camerastate/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/camerastate/a;->amI()V

    .line 1163
    invoke-virtual {p0}, Lcom/android/trajectory/a;->alo()Lcom/android/common/camerastate/DeviceState;

    move-result-object v0

    sget-object v1, Lcom/android/common/camerastate/DeviceState;->aeY:Lcom/android/common/camerastate/DeviceState;

    if-ne v0, v1, :cond_24

    .line 1164
    iget-object v0, p0, Lcom/android/trajectory/a;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pA()V

    .line 1166
    :cond_24
    const/4 v0, 0x5

    iput v0, p0, Lcom/android/trajectory/a;->asF:I

    .line 1167
    iget v0, p0, Lcom/android/trajectory/a;->asF:I

    invoke-direct {p0, v0}, Lcom/android/trajectory/a;->aEr(I)V

    .line 1159
    return-void
.end method

.method private aEf()V
    .registers 6

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 1171
    iget-object v0, p0, Lcom/android/trajectory/a;->asK:Lcom/android/camera/Trajectory/NubiaTrajectory;

    if-eqz v0, :cond_a

    .line 1172
    iget-object v0, p0, Lcom/android/trajectory/a;->adt:Lcom/android/common/appService/W;

    if-nez v0, :cond_3d

    .line 1173
    :cond_a
    const-string/jumbo v3, "TrajectoryFragment"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "trajectory null: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v0, p0, Lcom/android/trajectory/a;->asK:Lcom/android/camera/Trajectory/NubiaTrajectory;

    if-nez v0, :cond_39

    move v0, v1

    :goto_1e
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1174
    const-string/jumbo v4, "; appService null: "

    .line 1173
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1174
    iget-object v4, p0, Lcom/android/trajectory/a;->adt:Lcom/android/common/appService/W;

    if-nez v4, :cond_3b

    .line 1173
    :goto_2d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 1175
    return-void

    :cond_39
    move v0, v2

    .line 1173
    goto :goto_1e

    :cond_3b
    move v1, v2

    .line 1174
    goto :goto_2d

    .line 1178
    :cond_3d
    iget-object v0, p0, Lcom/android/trajectory/a;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pK()Z

    move-result v0

    if-eqz v0, :cond_55

    .line 1179
    iget-object v0, p0, Lcom/android/trajectory/a;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pk()Z

    move-result v0

    .line 1178
    if-nez v0, :cond_55

    .line 1180
    invoke-virtual {p0}, Lcom/android/trajectory/a;->alp()Lcom/android/common/camerastate/FunctionState;

    move-result-object v0

    sget-object v2, Lcom/android/common/camerastate/FunctionState;->afr:Lcom/android/common/camerastate/FunctionState;

    if-eq v0, v2, :cond_b4

    .line 1183
    :cond_55
    const-string/jumbo v0, "TrajectoryFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "storage enough: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/trajectory/a;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v2}, Lcom/android/common/appService/W;->pK()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1184
    const-string/jumbo v2, "; Activity pause: "

    .line 1183
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1184
    iget-object v2, p0, Lcom/android/trajectory/a;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v2}, Lcom/android/common/appService/W;->pk()Z

    move-result v2

    .line 1183
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1185
    const-string/jumbo v2, "; FunctionState: "

    .line 1183
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1185
    invoke-virtual {p0}, Lcom/android/trajectory/a;->alp()Lcom/android/common/camerastate/FunctionState;

    move-result-object v2

    .line 1183
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1186
    const-string/jumbo v2, "; DeviceState: "

    .line 1183
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1186
    invoke-virtual {p0}, Lcom/android/trajectory/a;->alo()Lcom/android/common/camerastate/DeviceState;

    move-result-object v2

    .line 1183
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1187
    const-string/jumbo v2, "; UIState: "

    .line 1183
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1187
    invoke-virtual {p0}, Lcom/android/trajectory/a;->alk()Lcom/android/common/camerastate/UIState;

    move-result-object v2

    .line 1183
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/a/a;->bvt(Ljava/lang/String;Ljava/lang/String;)V

    .line 1188
    return-void

    .line 1181
    :cond_b4
    invoke-virtual {p0}, Lcom/android/trajectory/a;->alo()Lcom/android/common/camerastate/DeviceState;

    move-result-object v0

    sget-object v2, Lcom/android/common/camerastate/DeviceState;->aeX:Lcom/android/common/camerastate/DeviceState;

    if-ne v0, v2, :cond_55

    .line 1182
    invoke-virtual {p0}, Lcom/android/trajectory/a;->alk()Lcom/android/common/camerastate/UIState;

    move-result-object v0

    sget-object v2, Lcom/android/common/camerastate/UIState;->afk:Lcom/android/common/camerastate/UIState;

    if-ne v0, v2, :cond_55

    .line 1198
    iget v0, p0, Lcom/android/trajectory/a;->asF:I

    const/4 v2, 0x5

    if-eq v0, v2, :cond_ed

    .line 1199
    const-string/jumbo v0, "TrajectoryFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mStatus is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/trajectory/a;->asF:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " can\'t start trajectory!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1200
    return-void

    .line 1202
    :cond_ed
    iput-boolean v1, p0, Lcom/android/trajectory/a;->asi:Z

    .line 1203
    iget-object v0, p0, Lcom/android/trajectory/a;->asK:Lcom/android/camera/Trajectory/NubiaTrajectory;

    invoke-virtual {v0}, Lcom/android/camera/Trajectory/NubiaTrajectory;->start()V

    .line 1204
    const/4 v0, 0x6

    iput v0, p0, Lcom/android/trajectory/a;->asF:I

    .line 1205
    iget-object v0, p0, Lcom/android/trajectory/a;->adt:Lcom/android/common/appService/W;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/common/appService/W;->pz(I)V

    .line 1206
    iget v0, p0, Lcom/android/trajectory/a;->asF:I

    invoke-direct {p0, v0}, Lcom/android/trajectory/a;->aEr(I)V

    .line 1170
    return-void
.end method

.method private aEh()V
    .registers 5

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 367
    invoke-direct {p0}, Lcom/android/trajectory/a;->aDW()V

    .line 368
    invoke-direct {p0}, Lcom/android/trajectory/a;->aDT()V

    .line 369
    invoke-direct {p0}, Lcom/android/trajectory/a;->aDU()V

    .line 370
    iget-object v0, p0, Lcom/android/trajectory/a;->asK:Lcom/android/camera/Trajectory/NubiaTrajectory;

    if-eqz v0, :cond_16

    .line 371
    iget-object v0, p0, Lcom/android/trajectory/a;->asK:Lcom/android/camera/Trajectory/NubiaTrajectory;

    invoke-virtual {v0, v2}, Lcom/android/camera/Trajectory/NubiaTrajectory;->ayv(Z)V

    .line 373
    :cond_16
    iget-object v0, p0, Lcom/android/trajectory/a;->asD:Landroid/widget/ImageView;

    if-eqz v0, :cond_1f

    .line 374
    iget-object v0, p0, Lcom/android/trajectory/a;->asD:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 376
    :cond_1f
    iget-object v0, p0, Lcom/android/trajectory/a;->asO:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_28

    .line 377
    iget-object v0, p0, Lcom/android/trajectory/a;->asO:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 378
    :cond_28
    iput-object v1, p0, Lcom/android/trajectory/a;->asd:[Ljava/lang/String;

    .line 379
    invoke-direct {p0}, Lcom/android/trajectory/a;->aDP()V

    .line 380
    invoke-direct {p0}, Lcom/android/trajectory/a;->aDO()V

    .line 381
    invoke-static {}, Lcom/android/camera/Trajectory/NubiaTrajectory;->CompositionCancel()V

    .line 382
    iput-boolean v2, p0, Lcom/android/trajectory/a;->asn:Z

    .line 366
    return-void
.end method

.method private aEi(Landroid/graphics/Bitmap;)V
    .registers 16

    .prologue
    .line 1032
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 1033
    invoke-static {v10, v11}, Lcom/android/common/h;->aoV(J)Ljava/lang/String;

    move-result-object v9

    .line 1034
    iget-object v0, p0, Lcom/android/trajectory/a;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pF()I

    move-result v0

    invoke-static {v0}, Lcom/android/common/f;->aol(I)Ljava/lang/String;

    move-result-object v12

    .line 1035
    iget-object v0, p0, Lcom/android/trajectory/a;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pG()Lcom/android/common/r/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/common/r/a;->ane()Landroid/location/Location;

    move-result-object v8

    .line 1036
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 1037
    invoke-virtual {v5}, Landroid/graphics/Matrix;->reset()V

    .line 1040
    iget v0, p0, Lcom/android/trajectory/a;->asq:F

    invoke-virtual {v5, v0}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 1041
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 1042
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    .line 1041
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 1042
    const/4 v6, 0x1

    move-object v0, p1

    .line 1041
    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v13

    .line 1048
    invoke-virtual {v13}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    .line 1049
    invoke-virtual {v13}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    move-object v1, p0

    move-object v2, v9

    move-object v3, v12

    move-wide v4, v10

    .line 1044
    invoke-direct/range {v1 .. v8}, Lcom/android/trajectory/a;->aDN(Ljava/lang/String;Ljava/lang/String;JIILandroid/location/Location;)Landroid/content/ContentValues;

    move-result-object v6

    .line 1051
    new-instance v0, Lcom/android/common/b/d;

    .line 1052
    iget-object v1, p0, Lcom/android/trajectory/a;->adt:Lcom/android/common/appService/W;

    .line 1054
    invoke-virtual {v13}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {v13}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-direct {p0, v8, v2, v3}, Lcom/android/trajectory/a;->aEs(Landroid/location/Location;II)Landroid/util/SparseArray;

    move-result-object v3

    .line 1055
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, "/"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1056
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v5, ".jpg"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1059
    new-instance v8, Lcom/android/trajectory/d;

    const/4 v2, 0x0

    invoke-direct {v8, p0, v2}, Lcom/android/trajectory/d;-><init>(Lcom/android/trajectory/a;Lcom/android/trajectory/d;)V

    .line 1058
    const/4 v7, 0x0

    move-object v2, v13

    .line 1051
    invoke-direct/range {v0 .. v8}, Lcom/android/common/b/d;-><init>(Lcom/android/common/appService/W;Landroid/graphics/Bitmap;Landroid/util/SparseArray;Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;ILcom/android/common/b/f;)V

    .line 1060
    iget-object v1, p0, Lcom/android/trajectory/a;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v1}, Lcom/android/common/appService/W;->pH()Lcom/android/common/storagemanager/f;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/common/storagemanager/f;->agv(Lcom/android/common/b/g;)Lcom/android/common/storagemanager/StorageManager$StorageStatusType;

    .line 1031
    return-void
.end method

.method private aEj(Ljava/lang/String;I)V
    .registers 4

    .prologue
    .line 518
    invoke-virtual {p0}, Lcom/android/trajectory/a;->aln()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 519
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 520
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 517
    return-void
.end method

.method private aEk(Landroid/graphics/Bitmap;)V
    .registers 9

    .prologue
    .line 1015
    :try_start_0
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 1016
    invoke-virtual {v5}, Landroid/graphics/Matrix;->reset()V

    .line 1017
    const/high16 v0, 0x3f000000    # 0.5f

    const/high16 v1, 0x3f000000    # 0.5f

    invoke-virtual {v5, v0, v1}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 1018
    iget v0, p0, Lcom/android/trajectory/a;->asw:F

    invoke-virtual {v5, v0}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 1019
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 1020
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    .line 1019
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 1020
    const/4 v6, 0x1

    move-object v0, p1

    .line 1019
    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1022
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1023
    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v3, 0x64

    invoke-virtual {v0, v2, v3, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 1024
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/trajectory/a;->aEn([B)V

    .line 1025
    iget-object v0, p0, Lcom/android/trajectory/a;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pE()V
    :try_end_3c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3c} :catch_3d

    .line 1013
    :goto_3c
    return-void

    .line 1026
    :catch_3d
    move-exception v0

    .line 1027
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3c
.end method

.method private aEl(I)V
    .registers 3

    .prologue
    .line 513
    iput p1, p0, Lcom/android/trajectory/a;->arT:I

    .line 514
    iget v0, p0, Lcom/android/trajectory/a;->arT:I

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/android/trajectory/a;->asr:[Z

    .line 512
    return-void
.end method

.method private aEm(I)V
    .registers 7

    .prologue
    const/4 v1, 0x0

    .line 561
    iget-object v0, p0, Lcom/android/trajectory/a;->asz:Landroid/graphics/Bitmap;

    if-nez v0, :cond_a2

    .line 562
    iget v0, p0, Lcom/android/trajectory/a;->asf:I

    iget v1, p0, Lcom/android/trajectory/a;->asQ:I

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/trajectory/a;->asz:Landroid/graphics/Bitmap;

    .line 568
    :goto_11
    iget v0, p0, Lcom/android/trajectory/a;->asQ:I

    iget v1, p0, Lcom/android/trajectory/a;->asf:I

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 569
    invoke-static {p1, v0}, Lcom/android/camera/Trajectory/NubiaTrajectory;->GetSavedImageRGBA(ILandroid/graphics/Bitmap;)I

    move-result v1

    .line 570
    if-eqz v1, :cond_49

    .line 571
    const-string/jumbo v2, "TrajectoryFragment"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "show "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " view failed: ret = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 572
    invoke-direct {p0}, Lcom/android/trajectory/a;->aEh()V

    .line 574
    :cond_49
    const-string/jumbo v1, "TrajectoryFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mShowBimap.getWidth() = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/trajectory/a;->asz:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 575
    const-string/jumbo v3, "; mShowBimap.getHeight() = "

    .line 574
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 575
    iget-object v3, p0, Lcom/android/trajectory/a;->asz:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    .line 574
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 576
    const-string/jumbo v3, "; mWidth = "

    .line 574
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 576
    iget v3, p0, Lcom/android/trajectory/a;->asQ:I

    .line 574
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 576
    const-string/jumbo v3, "; mHeight = "

    .line 574
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 576
    iget v3, p0, Lcom/android/trajectory/a;->asf:I

    .line 574
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 577
    invoke-direct {p0}, Lcom/android/trajectory/a;->aDS()I

    move-result v1

    .line 578
    iget-object v2, p0, Lcom/android/trajectory/a;->asz:Landroid/graphics/Bitmap;

    iget v3, p0, Lcom/android/trajectory/a;->asQ:I

    iget v4, p0, Lcom/android/trajectory/a;->asf:I

    invoke-static {v0, v2, v3, v4, v1}, Lcom/android/camera/Trajectory/NubiaTrajectory;->RotateBitmapRGBA8888(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;III)V

    .line 555
    return-void

    .line 564
    :cond_a2
    iget-object v0, p0, Lcom/android/trajectory/a;->asz:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 565
    iput-object v1, p0, Lcom/android/trajectory/a;->asz:Landroid/graphics/Bitmap;

    .line 566
    iget v0, p0, Lcom/android/trajectory/a;->asf:I

    iget v1, p0, Lcom/android/trajectory/a;->asQ:I

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/trajectory/a;->asz:Landroid/graphics/Bitmap;

    goto/16 :goto_11
.end method

.method private aEn([B)V
    .registers 3

    .prologue
    .line 1010
    invoke-virtual {p0}, Lcom/android/trajectory/a;->all()Lcom/android/common/appService/W;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/common/appService/W;->pD([B)V

    .line 1009
    return-void
.end method

.method private aEo()V
    .registers 3

    .prologue
    .line 997
    iget-object v0, p0, Lcom/android/trajectory/a;->asC:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/android/trajectory/a;->asb:Lcom/android/common/ui/RotateImageView;

    if-eqz v0, :cond_15

    .line 998
    iget-object v0, p0, Lcom/android/trajectory/a;->asC:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 999
    iget-object v0, p0, Lcom/android/trajectory/a;->asb:Lcom/android/common/ui/RotateImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/common/ui/RotateImageView;->setVisibility(I)V

    .line 996
    :cond_15
    return-void
.end method

.method private aEp()V
    .registers 1

    .prologue
    .line 498
    return-void
.end method

.method private aEq()V
    .registers 3

    .prologue
    .line 890
    iget-object v0, p0, Lcom/android/trajectory/a;->adt:Lcom/android/common/appService/W;

    if-nez v0, :cond_5

    .line 891
    return-void

    .line 892
    :cond_5
    iget-object v0, p0, Lcom/android/trajectory/a;->asP:Lcom/android/common/ui/MultiFunctionImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/common/ui/MultiFunctionImageView;->setVisibility(I)V

    .line 893
    iget-object v0, p0, Lcom/android/trajectory/a;->asP:Lcom/android/common/ui/MultiFunctionImageView;

    sget-object v1, Lcom/android/common/ui/MultiFunctionImageView$Function;->An:Lcom/android/common/ui/MultiFunctionImageView$Function;

    invoke-virtual {v0, v1}, Lcom/android/common/ui/MultiFunctionImageView;->Ez(Lcom/android/common/ui/MultiFunctionImageView$Function;)V

    .line 889
    return-void
.end method

.method private aEr(I)V
    .registers 5

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 1116
    packed-switch p1, :pswitch_data_32

    .line 1115
    :goto_6
    return-void

    .line 1118
    :pswitch_7
    iget-object v0, p0, Lcom/android/trajectory/a;->asc:Lcom/android/common/ui/RotateImageView;

    invoke-virtual {v0, v2}, Lcom/android/common/ui/RotateImageView;->setVisibility(I)V

    .line 1119
    iget-object v0, p0, Lcom/android/trajectory/a;->arM:Lcom/android/common/ui/RotateImageView;

    invoke-virtual {v0, v2}, Lcom/android/common/ui/RotateImageView;->setVisibility(I)V

    .line 1120
    iget-object v0, p0, Lcom/android/trajectory/a;->asb:Lcom/android/common/ui/RotateImageView;

    invoke-virtual {v0, v2}, Lcom/android/common/ui/RotateImageView;->setVisibility(I)V

    .line 1121
    invoke-virtual {p0}, Lcom/android/trajectory/a;->alq()V

    goto :goto_6

    .line 1124
    :pswitch_1a
    invoke-virtual {p0}, Lcom/android/trajectory/a;->alr()V

    goto :goto_6

    .line 1128
    :pswitch_1e
    invoke-direct {p0}, Lcom/android/trajectory/a;->aDW()V

    .line 1129
    iget-object v0, p0, Lcom/android/trajectory/a;->asc:Lcom/android/common/ui/RotateImageView;

    invoke-virtual {v0, v1}, Lcom/android/common/ui/RotateImageView;->setVisibility(I)V

    .line 1130
    iget-object v0, p0, Lcom/android/trajectory/a;->arM:Lcom/android/common/ui/RotateImageView;

    invoke-virtual {v0, v1}, Lcom/android/common/ui/RotateImageView;->setVisibility(I)V

    .line 1131
    iget-object v0, p0, Lcom/android/trajectory/a;->asb:Lcom/android/common/ui/RotateImageView;

    invoke-virtual {v0, v1}, Lcom/android/common/ui/RotateImageView;->setVisibility(I)V

    goto :goto_6

    .line 1116
    nop

    :pswitch_data_32
    .packed-switch 0x5
        :pswitch_7
        :pswitch_1a
        :pswitch_1e
    .end packed-switch
.end method

.method private aEs(Landroid/location/Location;II)Landroid/util/SparseArray;
    .registers 10

    .prologue
    const v5, 0x3c23d70a    # 0.01f

    .line 1088
    iget-object v0, p0, Lcom/android/trajectory/a;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pt()Lcom/android/common/cameradevice/p;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/common/cameradevice/p;->Ln()F

    move-result v0

    .line 1089
    iget-object v1, p0, Lcom/android/trajectory/a;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v1}, Lcom/android/common/appService/W;->pI()F

    move-result v1

    .line 1091
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    .line 1093
    sget v3, Lcom/android/common/exif/o;->PC:I

    invoke-static {}, Lcom/android/common/custom/D;->aeM()Lcom/android/common/custom/D;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/common/custom/D;->aeN()Lcom/android/common/custom/x;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/common/custom/x;->aem()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1095
    sget v3, Lcom/android/common/exif/o;->PD:I

    invoke-static {}, Lcom/android/common/custom/D;->aeM()Lcom/android/common/custom/D;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/common/custom/D;->aeN()Lcom/android/common/custom/x;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/common/custom/x;->aen()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1097
    sget v3, Lcom/android/common/exif/o;->PE:I

    new-instance v4, Lcom/android/common/exif/m;

    invoke-direct {v4, v1, v5}, Lcom/android/common/exif/m;-><init>(FF)V

    invoke-virtual {v2, v3, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1098
    sget v1, Lcom/android/common/exif/o;->PF:I

    new-instance v3, Lcom/android/common/exif/m;

    invoke-direct {v3, v0, v5}, Lcom/android/common/exif/m;-><init>(FF)V

    invoke-virtual {v2, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1099
    sget v0, Lcom/android/common/exif/o;->PG:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1100
    sget v0, Lcom/android/common/exif/o;->PH:I

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1101
    if-eqz p1, :cond_6d

    .line 1102
    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v0

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    invoke-static {v0, v1, v4, v5, v2}, Lcom/android/common/h;->aoW(DDLandroid/util/SparseArray;)V

    .line 1104
    :cond_6d
    return-object v2
.end method

.method static synthetic aEt()[I
    .registers 1

    sget-object v0, Lcom/android/trajectory/a;->arJ:[I

    return-object v0
.end method

.method static synthetic aEu()[I
    .registers 1

    sget-object v0, Lcom/android/trajectory/a;->arK:[I

    return-object v0
.end method

.method static synthetic aEv()[I
    .registers 1

    sget-object v0, Lcom/android/trajectory/a;->arL:[I

    return-object v0
.end method

.method static synthetic aEw(Lcom/android/trajectory/a;)Lcom/android/common/appService/W;
    .registers 2

    iget-object v0, p0, Lcom/android/trajectory/a;->adt:Lcom/android/common/appService/W;

    return-object v0
.end method

.method static synthetic aEx(Lcom/android/trajectory/a;)Landroid/widget/SeekBar;
    .registers 2

    iget-object v0, p0, Lcom/android/trajectory/a;->arR:Landroid/widget/SeekBar;

    return-object v0
.end method

.method static synthetic aEy(Lcom/android/trajectory/a;)Landroid/widget/TextView;
    .registers 2

    iget-object v0, p0, Lcom/android/trajectory/a;->arS:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic aEz(Lcom/android/trajectory/a;)[I
    .registers 2

    iget-object v0, p0, Lcom/android/trajectory/a;->arV:[I

    return-object v0
.end method

.method static synthetic aFa(Lcom/android/trajectory/a;[I)[I
    .registers 2

    iput-object p1, p0, Lcom/android/trajectory/a;->aso:[I

    return-object p1
.end method

.method static synthetic aFb(Lcom/android/trajectory/a;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .registers 2

    iput-object p1, p0, Lcom/android/trajectory/a;->ast:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic aFc(Lcom/android/trajectory/a;I)I
    .registers 2

    iput p1, p0, Lcom/android/trajectory/a;->asF:I

    return p1
.end method

.method static synthetic aFd(Lcom/android/trajectory/a;)Lcom/android/common/appService/W;
    .registers 2

    invoke-virtual {p0}, Lcom/android/trajectory/a;->all()Lcom/android/common/appService/W;

    move-result-object v0

    return-object v0
.end method

.method static synthetic aFe(Lcom/android/trajectory/a;)I
    .registers 2

    invoke-direct {p0}, Lcom/android/trajectory/a;->aDS()I

    move-result v0

    return v0
.end method

.method static synthetic aFf(Lcom/android/trajectory/a;I)Ljava/lang/String;
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/trajectory/a;->aDQ(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic aFg(Lcom/android/trajectory/a;I)Ljava/lang/String;
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/trajectory/a;->aDR(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic aFh(Lcom/android/trajectory/a;[I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/trajectory/a;->aDL([I)V

    return-void
.end method

.method static synthetic aFi(Lcom/android/trajectory/a;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/trajectory/a;->aDM(Z)V

    return-void
.end method

.method static synthetic aFj(Lcom/android/trajectory/a;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/trajectory/a;->aDO()V

    return-void
.end method

.method static synthetic aFk(Lcom/android/trajectory/a;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/trajectory/a;->aDT()V

    return-void
.end method

.method static synthetic aFl(Lcom/android/trajectory/a;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/trajectory/a;->aDW()V

    return-void
.end method

.method static synthetic aFm(Lcom/android/trajectory/a;[Landroid/graphics/Bitmap;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/trajectory/a;->aEd([Landroid/graphics/Bitmap;)V

    return-void
.end method

.method static synthetic aFn(Lcom/android/trajectory/a;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/trajectory/a;->aEe()V

    return-void
.end method

.method static synthetic aFo(Lcom/android/trajectory/a;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/trajectory/a;->aEh()V

    return-void
.end method

.method static synthetic aFp(Lcom/android/trajectory/a;Landroid/graphics/Bitmap;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/trajectory/a;->aEi(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method static synthetic aFq(Lcom/android/trajectory/a;Ljava/lang/String;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/trajectory/a;->aEj(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic aFr(Lcom/android/trajectory/a;Landroid/graphics/Bitmap;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/trajectory/a;->aEk(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method static synthetic aFs(Lcom/android/trajectory/a;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/trajectory/a;->aEl(I)V

    return-void
.end method

.method static synthetic aFt(Lcom/android/trajectory/a;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/trajectory/a;->aEm(I)V

    return-void
.end method

.method static synthetic aFu(Lcom/android/trajectory/a;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/trajectory/a;->aEo()V

    return-void
.end method

.method static synthetic aFv(Lcom/android/trajectory/a;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/trajectory/a;->aEp()V

    return-void
.end method

.method static synthetic aFw(Lcom/android/trajectory/a;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/trajectory/a;->aEr(I)V

    return-void
.end method


# virtual methods
.method public aEg()Z
    .registers 2

    .prologue
    .line 1316
    const/4 v0, 0x0

    return v0
.end method

.method protected aji(IIII)V
    .registers 7

    .prologue
    .line 1321
    iget-object v0, p0, Lcom/android/trajectory/a;->asu:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    sub-int v1, p3, p1

    if-ne v0, v1, :cond_14

    .line 1322
    iget-object v0, p0, Lcom/android/trajectory/a;->asu:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    sub-int v1, p4, p2

    if-eq v0, v1, :cond_37

    .line 1323
    :cond_14
    const-string/jumbo v0, "TrajectoryFragment"

    const-string/jumbo v1, "relayout mPreviewRelativeContent"

    invoke-static {v0, v1}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 1324
    iget-object v0, p0, Lcom/android/trajectory/a;->asu:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 1325
    sub-int v1, p3, p1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 1326
    sub-int v1, p4, p2

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 1327
    iput p2, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 1328
    invoke-virtual {v0, p1}, Landroid/widget/RelativeLayout$LayoutParams;->setMarginStart(I)V

    .line 1329
    iget-object v0, p0, Lcom/android/trajectory/a;->asu:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    .line 1320
    :cond_37
    return-void
.end method

.method protected ajt(IZ)V
    .registers 4

    .prologue
    .line 678
    iput p1, p0, Lcom/android/trajectory/a;->asp:I

    .line 679
    iput-boolean p2, p0, Lcom/android/trajectory/a;->asR:Z

    .line 680
    iget-object v0, p0, Lcom/android/trajectory/a;->asE:Landroid/widget/SimpleAdapter;

    if-eqz v0, :cond_d

    .line 681
    iget-object v0, p0, Lcom/android/trajectory/a;->asE:Landroid/widget/SimpleAdapter;

    invoke-virtual {v0}, Landroid/widget/SimpleAdapter;->notifyDataSetChanged()V

    .line 683
    :cond_d
    invoke-super {p0, p1, p2}, Lcom/android/common/o/l;->ajt(IZ)V

    .line 677
    return-void
.end method

.method protected alq()V
    .registers 3

    .prologue
    .line 1335
    invoke-super {p0}, Lcom/android/common/o/l;->alq()V

    .line 1336
    iget-object v0, p0, Lcom/android/trajectory/a;->asL:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_e

    .line 1337
    iget-object v0, p0, Lcom/android/trajectory/a;->asL:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1334
    :cond_e
    return-void
.end method

.method protected alr()V
    .registers 3

    .prologue
    .line 1343
    invoke-super {p0}, Lcom/android/common/o/l;->alr()V

    .line 1344
    iget-object v0, p0, Lcom/android/trajectory/a;->asL:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_d

    .line 1345
    iget-object v0, p0, Lcom/android/trajectory/a;->asL:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1342
    :cond_d
    return-void
.end method

.method public ayP()V
    .registers 1

    .prologue
    .line 447
    invoke-direct {p0}, Lcom/android/trajectory/a;->aDV()V

    .line 449
    invoke-direct {p0}, Lcom/android/trajectory/a;->aDP()V

    .line 446
    return-void
.end method

.method public ayQ(I)V
    .registers 7

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 774
    iget v0, p0, Lcom/android/trajectory/a;->arT:I

    if-gt p1, v0, :cond_25

    .line 775
    iget-object v0, p0, Lcom/android/trajectory/a;->asK:Lcom/android/camera/Trajectory/NubiaTrajectory;

    invoke-virtual {v0}, Lcom/android/camera/Trajectory/NubiaTrajectory;->ayA()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x42c80000    # 100.0f

    div-float v0, v1, v0

    int-to-float v1, p1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    .line 776
    iget-object v1, p0, Lcom/android/trajectory/a;->asP:Lcom/android/common/ui/MultiFunctionImageView;

    invoke-virtual {v1, v3}, Lcom/android/common/ui/MultiFunctionImageView;->setVisibility(I)V

    .line 777
    iget-object v1, p0, Lcom/android/trajectory/a;->asP:Lcom/android/common/ui/MultiFunctionImageView;

    sget-object v2, Lcom/android/common/ui/MultiFunctionImageView$Function;->Am:Lcom/android/common/ui/MultiFunctionImageView$Function;

    invoke-virtual {v1, v2}, Lcom/android/common/ui/MultiFunctionImageView;->Ez(Lcom/android/common/ui/MultiFunctionImageView$Function;)V

    .line 778
    iget-object v1, p0, Lcom/android/trajectory/a;->asP:Lcom/android/common/ui/MultiFunctionImageView;

    invoke-virtual {v1, v0, v4}, Lcom/android/common/ui/MultiFunctionImageView;->Ex(IZ)V

    .line 780
    :cond_25
    iget v0, p0, Lcom/android/trajectory/a;->arT:I

    if-ne p1, v0, :cond_4b

    .line 781
    iget-object v0, p0, Lcom/android/trajectory/a;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pB()V

    .line 782
    iget-object v0, p0, Lcom/android/trajectory/a;->asP:Lcom/android/common/ui/MultiFunctionImageView;

    const/16 v1, 0x64

    invoke-virtual {v0, v1, v4}, Lcom/android/common/ui/MultiFunctionImageView;->Ex(IZ)V

    .line 783
    iget-object v0, p0, Lcom/android/trajectory/a;->asP:Lcom/android/common/ui/MultiFunctionImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/common/ui/MultiFunctionImageView;->setVisibility(I)V

    .line 784
    iget-object v0, p0, Lcom/android/trajectory/a;->asP:Lcom/android/common/ui/MultiFunctionImageView;

    invoke-virtual {v0, v3, v3}, Lcom/android/common/ui/MultiFunctionImageView;->Ex(IZ)V

    .line 785
    iget-object v0, p0, Lcom/android/trajectory/a;->asP:Lcom/android/common/ui/MultiFunctionImageView;

    sget-object v1, Lcom/android/common/ui/MultiFunctionImageView$Function;->Am:Lcom/android/common/ui/MultiFunctionImageView$Function;

    invoke-virtual {v0, v1}, Lcom/android/common/ui/MultiFunctionImageView;->Ey(Lcom/android/common/ui/MultiFunctionImageView$Function;)V

    .line 786
    invoke-direct {p0}, Lcom/android/trajectory/a;->aEq()V

    .line 773
    :cond_4b
    return-void
.end method

.method public ayR(III)V
    .registers 7

    .prologue
    const/4 v2, 0x0

    .line 792
    iput p1, p0, Lcom/android/trajectory/a;->asQ:I

    .line 793
    iput p2, p0, Lcom/android/trajectory/a;->asf:I

    .line 794
    iput p3, p0, Lcom/android/trajectory/a;->ash:I

    .line 795
    iput-boolean v2, p0, Lcom/android/trajectory/a;->asi:Z

    .line 796
    iget-object v0, p0, Lcom/android/trajectory/a;->asK:Lcom/android/camera/Trajectory/NubiaTrajectory;

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/android/trajectory/a;->asK:Lcom/android/camera/Trajectory/NubiaTrajectory;

    invoke-virtual {v0}, Lcom/android/camera/Trajectory/NubiaTrajectory;->ayB()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 797
    return-void

    .line 798
    :cond_16
    iget-object v0, p0, Lcom/android/trajectory/a;->adt:Lcom/android/common/appService/W;

    if-eqz v0, :cond_36

    .line 799
    iget-object v0, p0, Lcom/android/trajectory/a;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pv()I

    move-result v0

    .line 800
    iget-object v1, p0, Lcom/android/trajectory/a;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v1}, Lcom/android/common/appService/W;->pC()I

    move-result v1

    .line 799
    invoke-static {v0, v1}, Lcom/android/common/h;->aoU(II)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/android/trajectory/a;->asw:F

    .line 801
    iget-object v0, p0, Lcom/android/trajectory/a;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pC()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/android/trajectory/a;->asq:F

    .line 803
    :cond_36
    invoke-direct {p0}, Lcom/android/trajectory/a;->PreRegister()V

    .line 804
    iget-object v0, p0, Lcom/android/trajectory/a;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v0, v2}, Lcom/android/common/appService/W;->pz(I)V

    .line 791
    return-void
.end method

.method public ayS()V
    .registers 3

    .prologue
    .line 356
    const-string/jumbo v0, "TrajectoryFragment"

    const-string/jumbo v1, "onRestart"

    invoke-static {v0, v1}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 357
    invoke-direct {p0}, Lcom/android/trajectory/a;->aEa()V

    .line 358
    iget-object v0, p0, Lcom/android/trajectory/a;->ase:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 359
    iget-object v0, p0, Lcom/android/trajectory/a;->ase:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 360
    iget-object v0, p0, Lcom/android/trajectory/a;->ase:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 361
    iget-object v0, p0, Lcom/android/trajectory/a;->ase:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 362
    iget-object v0, p0, Lcom/android/trajectory/a;->ase:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 363
    invoke-direct {p0}, Lcom/android/trajectory/a;->aEh()V

    .line 355
    return-void
.end method

.method public ayT()V
    .registers 3

    .prologue
    const/16 v1, 0x8

    .line 438
    iget-object v0, p0, Lcom/android/trajectory/a;->adt:Lcom/android/common/appService/W;

    if-eqz v0, :cond_d

    .line 439
    invoke-virtual {p0}, Lcom/android/trajectory/a;->all()Lcom/android/common/appService/W;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pA()V

    .line 440
    :cond_d
    iget-object v0, p0, Lcom/android/trajectory/a;->asO:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 441
    iget-object v0, p0, Lcom/android/trajectory/a;->asD:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 442
    iget-object v0, p0, Lcom/android/trajectory/a;->ase:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 437
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 4

    .prologue
    .line 338
    iget-object v0, p0, Lcom/android/trajectory/a;->asJ:Lcom/android/common/ui/RotateLayout;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/android/trajectory/a;->asJ:Lcom/android/common/ui/RotateLayout;

    invoke-virtual {v0}, Lcom/android/common/ui/RotateLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_13

    .line 339
    iget-object v0, p0, Lcom/android/trajectory/a;->asJ:Lcom/android/common/ui/RotateLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/common/ui/RotateLayout;->setVisibility(I)V

    .line 341
    :cond_13
    invoke-super {p0, p1}, Lcom/android/common/o/l;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onBackPressed()Z
    .registers 4

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1272
    iget-object v0, p0, Lcom/android/trajectory/a;->arM:Lcom/android/common/ui/RotateImageView;

    if-eqz v0, :cond_12

    .line 1273
    iget-object v0, p0, Lcom/android/trajectory/a;->arM:Lcom/android/common/ui/RotateImageView;

    invoke-virtual {v0}, Lcom/android/common/ui/RotateImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_12

    .line 1274
    invoke-direct {p0, v1}, Lcom/android/trajectory/a;->aDM(Z)V

    .line 1275
    return v2

    .line 1276
    :cond_12
    iget v0, p0, Lcom/android/trajectory/a;->asF:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1c

    .line 1277
    invoke-super {p0}, Lcom/android/common/o/l;->onBackPressed()Z

    move-result v0

    return v0

    .line 1279
    :cond_1c
    return v2
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 7

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 238
    invoke-super {p0, p1, p2, p3}, Lcom/android/common/o/l;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    .line 239
    iget-boolean v0, p0, Lcom/android/trajectory/a;->adu:Z

    if-eqz v0, :cond_a

    .line 240
    return-object v1

    .line 242
    :cond_a
    iput-boolean v2, p0, Lcom/android/trajectory/a;->asj:Z

    .line 244
    const-string/jumbo v0, "TrajectoryFragment"

    const-string/jumbo v1, "onCreateView"

    invoke-static {v0, v1}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    const v0, 0x7f040099

    invoke-virtual {p1, v0, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 247
    if-nez v0, :cond_27

    .line 248
    const-string/jumbo v1, "TrajectoryFragment"

    const-string/jumbo v2, "view == null"

    invoke-static {v1, v2}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    :cond_27
    invoke-direct {p0, v0}, Lcom/android/trajectory/a;->aDY(Landroid/view/View;)V

    .line 251
    return-object v0
.end method

.method public onDestroyView()V
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 748
    iget-boolean v0, p0, Lcom/android/trajectory/a;->adu:Z

    if-eqz v0, :cond_9

    .line 749
    invoke-super {p0}, Lcom/android/common/o/l;->onDestroyView()V

    .line 750
    return-void

    .line 752
    :cond_9
    iput-boolean v1, p0, Lcom/android/trajectory/a;->asj:Z

    .line 753
    iget-boolean v0, p0, Lcom/android/trajectory/a;->asm:Z

    if-eqz v0, :cond_14

    .line 755
    :try_start_f
    iget-object v0, p0, Lcom/android/trajectory/a;->ass:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->join()V
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_14} :catch_32

    .line 759
    :cond_14
    :goto_14
    iget-object v0, p0, Lcom/android/trajectory/a;->ase:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 760
    iget-object v0, p0, Lcom/android/trajectory/a;->ase:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 761
    iget-object v0, p0, Lcom/android/trajectory/a;->ase:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 762
    iget-object v0, p0, Lcom/android/trajectory/a;->ase:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 763
    invoke-direct {p0}, Lcom/android/trajectory/a;->aEh()V

    .line 764
    invoke-super {p0}, Lcom/android/common/o/l;->onDestroyView()V

    .line 747
    return-void

    .line 756
    :catch_32
    move-exception v0

    goto :goto_14
.end method

.method public onPause()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 732
    iget-boolean v0, p0, Lcom/android/trajectory/a;->adu:Z

    if-eqz v0, :cond_9

    .line 733
    invoke-super {p0}, Lcom/android/common/o/l;->onPause()V

    .line 734
    return-void

    .line 736
    :cond_9
    iget-boolean v0, p0, Lcom/android/trajectory/a;->asi:Z

    if-eqz v0, :cond_21

    .line 737
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/trajectory/a;->aDM(Z)V

    .line 738
    iget-object v0, p0, Lcom/android/trajectory/a;->asP:Lcom/android/common/ui/MultiFunctionImageView;

    if-eqz v0, :cond_21

    .line 739
    iget-object v0, p0, Lcom/android/trajectory/a;->asP:Lcom/android/common/ui/MultiFunctionImageView;

    invoke-virtual {v0, v1, v1}, Lcom/android/common/ui/MultiFunctionImageView;->Ex(IZ)V

    .line 740
    iget-object v0, p0, Lcom/android/trajectory/a;->asP:Lcom/android/common/ui/MultiFunctionImageView;

    sget-object v1, Lcom/android/common/ui/MultiFunctionImageView$Function;->Am:Lcom/android/common/ui/MultiFunctionImageView$Function;

    invoke-virtual {v0, v1}, Lcom/android/common/ui/MultiFunctionImageView;->Ey(Lcom/android/common/ui/MultiFunctionImageView$Function;)V

    .line 743
    :cond_21
    invoke-super {p0}, Lcom/android/common/o/l;->onPause()V

    .line 731
    return-void
.end method

.method public onResume()V
    .registers 2

    .prologue
    .line 322
    invoke-super {p0}, Lcom/android/common/o/l;->onResume()V

    .line 323
    iget-boolean v0, p0, Lcom/android/trajectory/a;->adu:Z

    if-eqz v0, :cond_8

    .line 324
    return-void

    .line 321
    :cond_8
    return-void
.end method

.method public xf()V
    .registers 1

    .prologue
    .line 1292
    invoke-direct {p0}, Lcom/android/trajectory/a;->aEf()V

    .line 1291
    return-void
.end method

.method public xg(Z)V
    .registers 3

    .prologue
    .line 1285
    invoke-virtual {p0}, Lcom/android/trajectory/a;->all()Lcom/android/common/appService/W;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 1286
    return-void

    .line 1287
    :cond_7
    invoke-virtual {p0}, Lcom/android/trajectory/a;->all()Lcom/android/common/appService/W;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/common/appService/W;->pL(Z)V

    .line 1284
    return-void
.end method

.method public xh()V
    .registers 1

    .prologue
    .line 1297
    invoke-virtual {p0}, Lcom/android/trajectory/a;->xf()V

    .line 1296
    return-void
.end method
