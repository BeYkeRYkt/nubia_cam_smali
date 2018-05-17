.class final Lcom/android/gallery3d/ui/v;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/TimeInterpolator;


# instance fields
.field final synthetic awV:Lcom/android/gallery3d/ui/j;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/ui/j;)V
    .registers 2

    .prologue
    .line 1924
    iput-object p1, p0, Lcom/android/gallery3d/ui/v;->awV:Lcom/android/gallery3d/ui/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getInterpolation(F)F
    .registers 6

    .prologue
    .line 1927
    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr v0, p1

    float-to-double v0, v0

    const-wide/high16 v2, 0x4010000000000000L    # 4.0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    sub-double v0, v2, v0

    double-to-float v0, v0

    return v0
.end method
