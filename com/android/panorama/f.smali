.class Lcom/android/panorama/f;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public aPr:I

.field public aPs:Ljava/nio/ByteBuffer;

.field public aPt:Ljava/nio/ByteBuffer;

.field public aPu:I

.field final synthetic aPv:Lcom/android/panorama/d;


# direct methods
.method constructor <init>(Lcom/android/panorama/d;II[B[B)V
    .registers 7

    .prologue
    .line 597
    iput-object p1, p0, Lcom/android/panorama/f;->aPv:Lcom/android/panorama/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 599
    iput p2, p0, Lcom/android/panorama/f;->aPr:I

    .line 600
    iput p3, p0, Lcom/android/panorama/f;->aPu:I

    .line 601
    invoke-static {p1, p4}, Lcom/android/panorama/d;->bfN(Lcom/android/panorama/d;[B)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/panorama/f;->aPs:Ljava/nio/ByteBuffer;

    .line 602
    invoke-static {p1, p5}, Lcom/android/panorama/d;->bfN(Lcom/android/panorama/d;[B)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/panorama/f;->aPt:Ljava/nio/ByteBuffer;

    .line 598
    return-void
.end method
