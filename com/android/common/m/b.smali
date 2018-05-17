.class Lcom/android/common/m/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final aaW:J

.field public final aaX:J

.field public final aaY:Landroid/net/Uri;

.field public final orientation:I


# direct methods
.method public constructor <init>(JIJLandroid/net/Uri;)V
    .registers 7

    .prologue
    .line 204
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 205
    iput-wide p1, p0, Lcom/android/common/m/b;->aaX:J

    .line 206
    iput p3, p0, Lcom/android/common/m/b;->orientation:I

    .line 207
    iput-wide p4, p0, Lcom/android/common/m/b;->aaW:J

    .line 208
    iput-object p6, p0, Lcom/android/common/m/b;->aaY:Landroid/net/Uri;

    .line 204
    return-void
.end method
