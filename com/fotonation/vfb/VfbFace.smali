.class public Lcom/fotonation/vfb/VfbFace;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public blinkLevel:I

.field public boundRect:Lcom/fotonation/utils/Rectangle;

.field public id:I

.field public leftEyeRect:Lcom/fotonation/utils/Rectangle;

.field public pitchAngle:I

.field public rightEyeRect:Lcom/fotonation/utils/Rectangle;

.field public rollAngle:I

.field public smileLevel:I

.field public yawAngle:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Lcom/fotonation/utils/Rectangle;

    invoke-direct {v0}, Lcom/fotonation/utils/Rectangle;-><init>()V

    iput-object v0, p0, Lcom/fotonation/vfb/VfbFace;->boundRect:Lcom/fotonation/utils/Rectangle;

    .line 19
    new-instance v0, Lcom/fotonation/utils/Rectangle;

    invoke-direct {v0}, Lcom/fotonation/utils/Rectangle;-><init>()V

    iput-object v0, p0, Lcom/fotonation/vfb/VfbFace;->leftEyeRect:Lcom/fotonation/utils/Rectangle;

    .line 20
    new-instance v0, Lcom/fotonation/utils/Rectangle;

    invoke-direct {v0}, Lcom/fotonation/utils/Rectangle;-><init>()V

    iput-object v0, p0, Lcom/fotonation/vfb/VfbFace;->rightEyeRect:Lcom/fotonation/utils/Rectangle;

    .line 17
    return-void
.end method
