.class public Lcn/nubia/bigAperture/BigApertureTask;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final bmZ:Landroid/os/Parcelable$Creator;


# instance fields
.field public bmI:I

.field public bmJ:I

.field public bmK:Ljava/lang/String;

.field public bmL:Landroid/net/Uri;

.field public bmM:I

.field public bmN:I

.field public bmO:I

.field public bmP:I

.field public bmQ:I

.field public bmR:I

.field public bmS:I

.field public bmT:F

.field public bmU:F

.field public bmV:F

.field public bmW:F

.field public bmX:Ljava/lang/String;

.field public bmY:I

.field public bna:I

.field public bnb:Landroid/net/Uri;

.field public bnc:I

.field public bnd:[I

.field public bne:I

.field public bnf:I

.field public bng:I

.field public bnh:I

.field public bni:I

.field public mState:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 226
    new-instance v0, Lcn/nubia/bigAperture/s;

    invoke-direct {v0}, Lcn/nubia/bigAperture/s;-><init>()V

    sput-object v0, Lcn/nubia/bigAperture/BigApertureTask;->bmZ:Landroid/os/Parcelable$Creator;

    .line 8
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>(Landroid/net/Uri;Landroid/net/Uri;Ljava/lang/String;IIIIIIIIFFFFIIIIIILjava/lang/String;I[III)V
    .registers 29

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const/4 v1, 0x0

    iput v1, p0, Lcn/nubia/bigAperture/BigApertureTask;->mState:I

    .line 69
    iput-object p1, p0, Lcn/nubia/bigAperture/BigApertureTask;->bnb:Landroid/net/Uri;

    .line 70
    iput-object p3, p0, Lcn/nubia/bigAperture/BigApertureTask;->bmK:Ljava/lang/String;

    .line 71
    iput-object p2, p0, Lcn/nubia/bigAperture/BigApertureTask;->bmL:Landroid/net/Uri;

    .line 72
    iput p4, p0, Lcn/nubia/bigAperture/BigApertureTask;->bmI:I

    .line 73
    iput p5, p0, Lcn/nubia/bigAperture/BigApertureTask;->bmJ:I

    .line 74
    iput p6, p0, Lcn/nubia/bigAperture/BigApertureTask;->bng:I

    .line 75
    iput p7, p0, Lcn/nubia/bigAperture/BigApertureTask;->bnf:I

    .line 76
    iput p8, p0, Lcn/nubia/bigAperture/BigApertureTask;->bmP:I

    .line 77
    iput p9, p0, Lcn/nubia/bigAperture/BigApertureTask;->bmQ:I

    .line 78
    iput p10, p0, Lcn/nubia/bigAperture/BigApertureTask;->bmS:I

    .line 79
    iput p11, p0, Lcn/nubia/bigAperture/BigApertureTask;->bni:I

    .line 80
    move/from16 v0, p20

    iput v0, p0, Lcn/nubia/bigAperture/BigApertureTask;->bnc:I

    .line 81
    iput p12, p0, Lcn/nubia/bigAperture/BigApertureTask;->bmT:F

    .line 82
    iput p13, p0, Lcn/nubia/bigAperture/BigApertureTask;->bmU:F

    .line 83
    move/from16 v0, p14

    iput v0, p0, Lcn/nubia/bigAperture/BigApertureTask;->bmW:F

    .line 84
    move/from16 v0, p15

    iput v0, p0, Lcn/nubia/bigAperture/BigApertureTask;->bmV:F

    .line 85
    move/from16 v0, p16

    iput v0, p0, Lcn/nubia/bigAperture/BigApertureTask;->bmR:I

    .line 86
    move/from16 v0, p17

    iput v0, p0, Lcn/nubia/bigAperture/BigApertureTask;->bmM:I

    .line 87
    move/from16 v0, p19

    iput v0, p0, Lcn/nubia/bigAperture/BigApertureTask;->bmO:I

    .line 88
    move/from16 v0, p18

    iput v0, p0, Lcn/nubia/bigAperture/BigApertureTask;->bmN:I

    .line 89
    move-object/from16 v0, p24

    iput-object v0, p0, Lcn/nubia/bigAperture/BigApertureTask;->bnd:[I

    .line 90
    move/from16 v0, p25

    iput v0, p0, Lcn/nubia/bigAperture/BigApertureTask;->bna:I

    .line 91
    move/from16 v0, p26

    iput v0, p0, Lcn/nubia/bigAperture/BigApertureTask;->bne:I

    .line 92
    move/from16 v0, p21

    iput v0, p0, Lcn/nubia/bigAperture/BigApertureTask;->bnh:I

    .line 93
    move-object/from16 v0, p22

    iput-object v0, p0, Lcn/nubia/bigAperture/BigApertureTask;->bmX:Ljava/lang/String;

    .line 94
    move/from16 v0, p23

    iput v0, p0, Lcn/nubia/bigAperture/BigApertureTask;->bmY:I

    .line 68
    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;Landroid/net/Uri;Ljava/lang/String;IIIIIIIIFFFFIIIIILjava/lang/String;I[III)V
    .registers 53

    .prologue
    .line 60
    const/16 v21, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    move/from16 v11, p11

    move/from16 v12, p12

    move/from16 v13, p13

    move/from16 v14, p14

    move/from16 v15, p15

    move/from16 v16, p16

    move/from16 v17, p17

    move/from16 v18, p18

    move/from16 v19, p19

    move/from16 v20, p20

    move-object/from16 v22, p21

    move/from16 v23, p22

    move-object/from16 v24, p23

    move/from16 v25, p24

    move/from16 v26, p25

    .line 55
    invoke-direct/range {v0 .. v26}, Lcn/nubia/bigAperture/BigApertureTask;-><init>(Landroid/net/Uri;Landroid/net/Uri;Ljava/lang/String;IIIIIIIIFFFFIIIIIILjava/lang/String;I[III)V

    .line 54
    return-void
.end method

.method public constructor <init>(Lcn/nubia/bigAperture/BigApertureTask;)V
    .registers 3

    .prologue
    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const/4 v0, 0x0

    iput v0, p0, Lcn/nubia/bigAperture/BigApertureTask;->mState:I

    .line 98
    iget-object v0, p1, Lcn/nubia/bigAperture/BigApertureTask;->bmK:Ljava/lang/String;

    iput-object v0, p0, Lcn/nubia/bigAperture/BigApertureTask;->bmK:Ljava/lang/String;

    .line 99
    iget-object v0, p1, Lcn/nubia/bigAperture/BigApertureTask;->bmL:Landroid/net/Uri;

    iput-object v0, p0, Lcn/nubia/bigAperture/BigApertureTask;->bmL:Landroid/net/Uri;

    .line 100
    iget-object v0, p1, Lcn/nubia/bigAperture/BigApertureTask;->bnb:Landroid/net/Uri;

    iput-object v0, p0, Lcn/nubia/bigAperture/BigApertureTask;->bnb:Landroid/net/Uri;

    .line 101
    iget v0, p1, Lcn/nubia/bigAperture/BigApertureTask;->bmI:I

    iput v0, p0, Lcn/nubia/bigAperture/BigApertureTask;->bmI:I

    .line 102
    iget v0, p1, Lcn/nubia/bigAperture/BigApertureTask;->bmJ:I

    iput v0, p0, Lcn/nubia/bigAperture/BigApertureTask;->bmJ:I

    .line 103
    iget v0, p1, Lcn/nubia/bigAperture/BigApertureTask;->bng:I

    iput v0, p0, Lcn/nubia/bigAperture/BigApertureTask;->bng:I

    .line 104
    iget v0, p1, Lcn/nubia/bigAperture/BigApertureTask;->bnf:I

    iput v0, p0, Lcn/nubia/bigAperture/BigApertureTask;->bnf:I

    .line 105
    iget v0, p1, Lcn/nubia/bigAperture/BigApertureTask;->bmP:I

    iput v0, p0, Lcn/nubia/bigAperture/BigApertureTask;->bmP:I

    .line 106
    iget v0, p1, Lcn/nubia/bigAperture/BigApertureTask;->bmQ:I

    iput v0, p0, Lcn/nubia/bigAperture/BigApertureTask;->bmQ:I

    .line 107
    iget v0, p1, Lcn/nubia/bigAperture/BigApertureTask;->bmS:I

    iput v0, p0, Lcn/nubia/bigAperture/BigApertureTask;->bmS:I

    .line 108
    iget v0, p1, Lcn/nubia/bigAperture/BigApertureTask;->bni:I

    iput v0, p0, Lcn/nubia/bigAperture/BigApertureTask;->bni:I

    .line 109
    iget v0, p1, Lcn/nubia/bigAperture/BigApertureTask;->bnc:I

    iput v0, p0, Lcn/nubia/bigAperture/BigApertureTask;->bnc:I

    .line 110
    iget v0, p1, Lcn/nubia/bigAperture/BigApertureTask;->bmT:F

    iput v0, p0, Lcn/nubia/bigAperture/BigApertureTask;->bmT:F

    .line 111
    iget v0, p1, Lcn/nubia/bigAperture/BigApertureTask;->bmU:F

    iput v0, p0, Lcn/nubia/bigAperture/BigApertureTask;->bmU:F

    .line 112
    iget v0, p1, Lcn/nubia/bigAperture/BigApertureTask;->bmW:F

    iput v0, p0, Lcn/nubia/bigAperture/BigApertureTask;->bmW:F

    .line 113
    iget v0, p1, Lcn/nubia/bigAperture/BigApertureTask;->bmV:F

    iput v0, p0, Lcn/nubia/bigAperture/BigApertureTask;->bmV:F

    .line 114
    iget v0, p1, Lcn/nubia/bigAperture/BigApertureTask;->bmR:I

    iput v0, p0, Lcn/nubia/bigAperture/BigApertureTask;->bmR:I

    .line 115
    iget v0, p1, Lcn/nubia/bigAperture/BigApertureTask;->mState:I

    iput v0, p0, Lcn/nubia/bigAperture/BigApertureTask;->mState:I

    .line 116
    iget v0, p1, Lcn/nubia/bigAperture/BigApertureTask;->bmM:I

    iput v0, p0, Lcn/nubia/bigAperture/BigApertureTask;->bmM:I

    .line 117
    iget v0, p1, Lcn/nubia/bigAperture/BigApertureTask;->bmO:I

    iput v0, p0, Lcn/nubia/bigAperture/BigApertureTask;->bmO:I

    .line 118
    iget v0, p1, Lcn/nubia/bigAperture/BigApertureTask;->bmN:I

    iput v0, p0, Lcn/nubia/bigAperture/BigApertureTask;->bmN:I

    .line 119
    iget-object v0, p1, Lcn/nubia/bigAperture/BigApertureTask;->bnd:[I

    iput-object v0, p0, Lcn/nubia/bigAperture/BigApertureTask;->bnd:[I

    .line 120
    iget v0, p1, Lcn/nubia/bigAperture/BigApertureTask;->bna:I

    iput v0, p0, Lcn/nubia/bigAperture/BigApertureTask;->bna:I

    .line 121
    iget v0, p1, Lcn/nubia/bigAperture/BigApertureTask;->bne:I

    iput v0, p0, Lcn/nubia/bigAperture/BigApertureTask;->bne:I

    .line 122
    iget v0, p1, Lcn/nubia/bigAperture/BigApertureTask;->bnh:I

    iput v0, p0, Lcn/nubia/bigAperture/BigApertureTask;->bnh:I

    .line 123
    iget-object v0, p1, Lcn/nubia/bigAperture/BigApertureTask;->bmX:Ljava/lang/String;

    iput-object v0, p0, Lcn/nubia/bigAperture/BigApertureTask;->bmX:Ljava/lang/String;

    .line 124
    iget v0, p1, Lcn/nubia/bigAperture/BigApertureTask;->bmY:I

    iput v0, p0, Lcn/nubia/bigAperture/BigApertureTask;->bmY:I

    .line 97
    return-void
.end method

.method private bJp(Landroid/os/Parcel;[I)V
    .registers 4

    .prologue
    .line 187
    if-nez p2, :cond_7

    .line 188
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 186
    :goto_6
    return-void

    .line 190
    :cond_7
    array-length v0, p2

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 191
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeIntArray([I)V

    goto :goto_6
.end method


# virtual methods
.method public bJi()V
    .registers 2

    .prologue
    .line 148
    const/4 v0, 0x5

    iput v0, p0, Lcn/nubia/bigAperture/BigApertureTask;->mState:I

    .line 147
    return-void
.end method

.method public bJj()V
    .registers 2

    .prologue
    .line 144
    const/4 v0, 0x4

    iput v0, p0, Lcn/nubia/bigAperture/BigApertureTask;->mState:I

    .line 143
    return-void
.end method

.method public bJk()V
    .registers 2

    .prologue
    .line 132
    const/4 v0, 0x3

    iput v0, p0, Lcn/nubia/bigAperture/BigApertureTask;->mState:I

    .line 131
    return-void
.end method

.method public bJl()V
    .registers 2

    .prologue
    .line 136
    const/4 v0, 0x0

    iput v0, p0, Lcn/nubia/bigAperture/BigApertureTask;->mState:I

    .line 135
    return-void
.end method

.method public bJm()V
    .registers 2

    .prologue
    .line 140
    const/4 v0, 0x2

    iput v0, p0, Lcn/nubia/bigAperture/BigApertureTask;->mState:I

    .line 139
    return-void
.end method

.method public bJn()V
    .registers 2

    .prologue
    .line 128
    const/4 v0, 0x1

    iput v0, p0, Lcn/nubia/bigAperture/BigApertureTask;->mState:I

    .line 127
    return-void
.end method

.method public bJo()V
    .registers 3

    .prologue
    .line 223
    const-string/jumbo v0, "BigApertureTask"

    invoke-virtual {p0}, Lcn/nubia/bigAperture/BigApertureTask;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    return-void
.end method

.method public describeContents()I
    .registers 2

    .prologue
    .line 153
    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 197
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "BokehDepthTask: bigApertureUri: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/bigAperture/BigApertureTask;->bnb:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 198
    const-string/jumbo v1, "; BokehDirectoryPath: "

    .line 197
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 198
    iget-object v1, p0, Lcn/nubia/bigAperture/BigApertureTask;->bmK:Ljava/lang/String;

    .line 197
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 199
    const-string/jumbo v1, "; Uri: "

    .line 197
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 199
    iget-object v1, p0, Lcn/nubia/bigAperture/BigApertureTask;->bmL:Landroid/net/Uri;

    .line 197
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 200
    const-string/jumbo v1, "; MainDacValue: "

    .line 197
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 200
    iget v1, p0, Lcn/nubia/bigAperture/BigApertureTask;->bmS:I

    .line 197
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 201
    const-string/jumbo v1, "; SubDacValue: "

    .line 197
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 201
    iget v1, p0, Lcn/nubia/bigAperture/BigApertureTask;->bni:I

    .line 197
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 202
    const-string/jumbo v1, "; DualCameraLayout: "

    .line 197
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 202
    iget v1, p0, Lcn/nubia/bigAperture/BigApertureTask;->bnc:I

    .line 197
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 203
    const-string/jumbo v1, "; ColorYUVWidth: "

    .line 197
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 203
    iget v1, p0, Lcn/nubia/bigAperture/BigApertureTask;->bmI:I

    .line 197
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 204
    const-string/jumbo v1, "; COlorYUVHeight: "

    .line 197
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 204
    iget v1, p0, Lcn/nubia/bigAperture/BigApertureTask;->bmJ:I

    .line 197
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 205
    const-string/jumbo v1, "; MonoYUVWidth: "

    .line 197
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 205
    iget v1, p0, Lcn/nubia/bigAperture/BigApertureTask;->bng:I

    .line 197
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 206
    const-string/jumbo v1, "; MonoYUVHeight: "

    .line 197
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 206
    iget v1, p0, Lcn/nubia/bigAperture/BigApertureTask;->bnf:I

    .line 197
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 207
    const-string/jumbo v1, "; DepthWidth: "

    .line 197
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 207
    iget v1, p0, Lcn/nubia/bigAperture/BigApertureTask;->bmP:I

    .line 197
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 208
    const-string/jumbo v1, "; DepthHeight: "

    .line 197
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 208
    iget v1, p0, Lcn/nubia/bigAperture/BigApertureTask;->bmQ:I

    .line 197
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 209
    const-string/jumbo v1, "; FocusX: "

    .line 197
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 209
    iget v1, p0, Lcn/nubia/bigAperture/BigApertureTask;->bmT:F

    .line 197
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 210
    const-string/jumbo v1, "; FocusY: "

    .line 197
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 210
    iget v1, p0, Lcn/nubia/bigAperture/BigApertureTask;->bmU:F

    .line 197
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 211
    const-string/jumbo v1, "; FocusLength: "

    .line 197
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 211
    iget v1, p0, Lcn/nubia/bigAperture/BigApertureTask;->bmW:F

    .line 197
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 212
    const-string/jumbo v1, "; BokehLevel: "

    .line 197
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 212
    iget v1, p0, Lcn/nubia/bigAperture/BigApertureTask;->bmV:F

    .line 197
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 213
    const-string/jumbo v1, "; Rotation: "

    .line 197
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 213
    iget v1, p0, Lcn/nubia/bigAperture/BigApertureTask;->bmR:I

    .line 197
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 214
    const-string/jumbo v1, "; SkinSmooth: "

    .line 197
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 214
    iget v1, p0, Lcn/nubia/bigAperture/BigApertureTask;->bmM:I

    .line 197
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 215
    const-string/jumbo v1, "; SkinTone: "

    .line 197
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 215
    iget v1, p0, Lcn/nubia/bigAperture/BigApertureTask;->bmN:I

    .line 197
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 216
    const-string/jumbo v1, "; SkinSlim: "

    .line 197
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 216
    iget v1, p0, Lcn/nubia/bigAperture/BigApertureTask;->bmO:I

    .line 197
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 217
    const-string/jumbo v1, "; mPendingProcessCount: "

    .line 197
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 217
    iget v1, p0, Lcn/nubia/bigAperture/BigApertureTask;->bnh:I

    .line 197
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 218
    const-string/jumbo v1, "; mArtist: "

    .line 197
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 218
    iget-object v1, p0, Lcn/nubia/bigAperture/BigApertureTask;->bmX:Ljava/lang/String;

    .line 197
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 219
    const-string/jumbo v1, "; mLogoType: "

    .line 197
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 219
    iget v1, p0, Lcn/nubia/bigAperture/BigApertureTask;->bmY:I

    .line 197
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    .prologue
    .line 158
    iget-object v0, p0, Lcn/nubia/bigAperture/BigApertureTask;->bnb:Landroid/net/Uri;

    invoke-static {p1, v0}, Landroid/net/Uri;->writeToParcel(Landroid/os/Parcel;Landroid/net/Uri;)V

    .line 159
    iget-object v0, p0, Lcn/nubia/bigAperture/BigApertureTask;->bmL:Landroid/net/Uri;

    invoke-static {p1, v0}, Landroid/net/Uri;->writeToParcel(Landroid/os/Parcel;Landroid/net/Uri;)V

    .line 160
    iget-object v0, p0, Lcn/nubia/bigAperture/BigApertureTask;->bmK:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 161
    iget v0, p0, Lcn/nubia/bigAperture/BigApertureTask;->bmI:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 162
    iget v0, p0, Lcn/nubia/bigAperture/BigApertureTask;->bmJ:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 163
    iget v0, p0, Lcn/nubia/bigAperture/BigApertureTask;->bng:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 164
    iget v0, p0, Lcn/nubia/bigAperture/BigApertureTask;->bnf:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 165
    iget v0, p0, Lcn/nubia/bigAperture/BigApertureTask;->bmP:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 166
    iget v0, p0, Lcn/nubia/bigAperture/BigApertureTask;->bmQ:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 167
    iget v0, p0, Lcn/nubia/bigAperture/BigApertureTask;->bmS:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 168
    iget v0, p0, Lcn/nubia/bigAperture/BigApertureTask;->bni:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 169
    iget v0, p0, Lcn/nubia/bigAperture/BigApertureTask;->bmT:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 170
    iget v0, p0, Lcn/nubia/bigAperture/BigApertureTask;->bmU:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 171
    iget v0, p0, Lcn/nubia/bigAperture/BigApertureTask;->bmW:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 172
    iget v0, p0, Lcn/nubia/bigAperture/BigApertureTask;->bmV:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 173
    iget v0, p0, Lcn/nubia/bigAperture/BigApertureTask;->bmR:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 174
    iget v0, p0, Lcn/nubia/bigAperture/BigApertureTask;->bmM:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 175
    iget v0, p0, Lcn/nubia/bigAperture/BigApertureTask;->bmN:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 176
    iget v0, p0, Lcn/nubia/bigAperture/BigApertureTask;->bmO:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 177
    iget v0, p0, Lcn/nubia/bigAperture/BigApertureTask;->bnc:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 178
    iget v0, p0, Lcn/nubia/bigAperture/BigApertureTask;->bnh:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 179
    iget-object v0, p0, Lcn/nubia/bigAperture/BigApertureTask;->bmX:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 180
    iget v0, p0, Lcn/nubia/bigAperture/BigApertureTask;->bmY:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 181
    iget-object v0, p0, Lcn/nubia/bigAperture/BigApertureTask;->bnd:[I

    invoke-direct {p0, p1, v0}, Lcn/nubia/bigAperture/BigApertureTask;->bJp(Landroid/os/Parcel;[I)V

    .line 182
    iget v0, p0, Lcn/nubia/bigAperture/BigApertureTask;->bna:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 183
    iget v0, p0, Lcn/nubia/bigAperture/BigApertureTask;->bne:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 157
    return-void
.end method
