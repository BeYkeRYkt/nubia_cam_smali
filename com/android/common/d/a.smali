.class public Lcom/android/common/d/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/common/d/e;


# instance fields
.field private Mt:I

.field private Mu:Ljava/lang/String;

.field private Mv:I

.field private Mw:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/net/Uri;Ljava/lang/String;II)V
    .registers 7

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-object v1, p0, Lcom/android/common/d/a;->Mw:Landroid/net/Uri;

    .line 10
    iput-object v1, p0, Lcom/android/common/d/a;->Mu:Ljava/lang/String;

    .line 11
    iput v0, p0, Lcom/android/common/d/a;->Mv:I

    .line 12
    iput v0, p0, Lcom/android/common/d/a;->Mt:I

    .line 15
    iput-object p1, p0, Lcom/android/common/d/a;->Mw:Landroid/net/Uri;

    .line 16
    iput-object p2, p0, Lcom/android/common/d/a;->Mu:Ljava/lang/String;

    .line 17
    iput p3, p0, Lcom/android/common/d/a;->Mv:I

    .line 18
    iput p4, p0, Lcom/android/common/d/a;->Mt:I

    .line 14
    return-void
.end method


# virtual methods
.method public Jl()Lcom/android/common/m/a;
    .registers 4

    .prologue
    .line 23
    iget-object v0, p0, Lcom/android/common/d/a;->Mu:Ljava/lang/String;

    iget v1, p0, Lcom/android/common/d/a;->Mv:I

    invoke-static {v0, v1}, Lcom/android/common/m/a;->agR(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 24
    iget-object v1, p0, Lcom/android/common/d/a;->Mw:Landroid/net/Uri;

    iget v2, p0, Lcom/android/common/d/a;->Mt:I

    invoke-static {v1, v0, v2}, Lcom/android/common/m/a;->agS(Landroid/net/Uri;Landroid/graphics/Bitmap;I)Lcom/android/common/m/a;

    move-result-object v0

    return-object v0
.end method
