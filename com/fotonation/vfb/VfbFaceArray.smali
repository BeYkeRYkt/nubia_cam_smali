.class public Lcom/fotonation/vfb/VfbFaceArray;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final VFB_FACE_INFO_BLINK:I = 0x20

.field public static final VFB_FACE_INFO_EYES:I = 0x8

.field public static final VFB_FACE_INFO_FACE_PITCH:I = 0x4

.field public static final VFB_FACE_INFO_FACE_ROLL:I = 0x1

.field public static final VFB_FACE_INFO_FACE_YAW:I = 0x2

.field public static final VFB_FACE_INFO_SMILE:I = 0x10

.field public static final VFB_MAX_FACE_COUNT:I = 0xa


# instance fields
.field public mFaceCount:I

.field public mFaceFlags:I

.field public mFaces:[Lcom/fotonation/vfb/VfbFace;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public allocate(I)V
    .registers 5

    .prologue
    .line 27
    new-array v0, p1, [Lcom/fotonation/vfb/VfbFace;

    iput-object v0, p0, Lcom/fotonation/vfb/VfbFaceArray;->mFaces:[Lcom/fotonation/vfb/VfbFace;

    .line 28
    const/4 v0, 0x0

    :goto_5
    if-ge v0, p1, :cond_13

    .line 29
    iget-object v1, p0, Lcom/fotonation/vfb/VfbFaceArray;->mFaces:[Lcom/fotonation/vfb/VfbFace;

    new-instance v2, Lcom/fotonation/vfb/VfbFace;

    invoke-direct {v2}, Lcom/fotonation/vfb/VfbFace;-><init>()V

    aput-object v2, v1, v0

    .line 28
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 26
    :cond_13
    return-void
.end method
