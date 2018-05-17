.class public Lcom/fotonation/vfb/VfbConfig;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final VFB_MAX_FACE_COUNT:I = 0xa


# instance fields
.field public effectType:I

.field public faceCount:I

.field public faceStrengths:[Lcom/fotonation/vfb/VfbFaceStrengths;

.field public skinSmoothing:I

.field public skinToning:I

.field public smartColor:I

.field public smartLight:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public allocate(I)V
    .registers 5

    .prologue
    .line 22
    new-array v0, p1, [Lcom/fotonation/vfb/VfbFaceStrengths;

    iput-object v0, p0, Lcom/fotonation/vfb/VfbConfig;->faceStrengths:[Lcom/fotonation/vfb/VfbFaceStrengths;

    .line 23
    const/4 v0, 0x0

    :goto_5
    if-ge v0, p1, :cond_13

    .line 24
    iget-object v1, p0, Lcom/fotonation/vfb/VfbConfig;->faceStrengths:[Lcom/fotonation/vfb/VfbFaceStrengths;

    new-instance v2, Lcom/fotonation/vfb/VfbFaceStrengths;

    invoke-direct {v2}, Lcom/fotonation/vfb/VfbFaceStrengths;-><init>()V

    aput-object v2, v1, v0

    .line 23
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 21
    :cond_13
    return-void
.end method
