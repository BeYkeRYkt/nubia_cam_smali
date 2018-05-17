.class public Lcom/android/common/d/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/common/d/e;


# instance fields
.field private MH:[B

.field private MI:I

.field private MJ:I

.field private MK:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/net/Uri;[BII)V
    .registers 6

    .prologue
    const/4 v0, 0x0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-object v0, p0, Lcom/android/common/d/d;->MK:Landroid/net/Uri;

    .line 10
    iput-object v0, p0, Lcom/android/common/d/d;->MH:[B

    .line 11
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/common/d/d;->MI:I

    .line 12
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/common/d/d;->MJ:I

    .line 14
    iput-object p1, p0, Lcom/android/common/d/d;->MK:Landroid/net/Uri;

    .line 15
    iput-object p2, p0, Lcom/android/common/d/d;->MH:[B

    .line 16
    iput p3, p0, Lcom/android/common/d/d;->MI:I

    .line 17
    iput p4, p0, Lcom/android/common/d/d;->MJ:I

    .line 13
    return-void
.end method


# virtual methods
.method public Jl()Lcom/android/common/m/a;
    .registers 5

    .prologue
    .line 22
    iget-object v0, p0, Lcom/android/common/d/d;->MH:[B

    iget v1, p0, Lcom/android/common/d/d;->MI:I

    iget v2, p0, Lcom/android/common/d/d;->MJ:I

    iget-object v3, p0, Lcom/android/common/d/d;->MK:Landroid/net/Uri;

    invoke-static {v0, v1, v2, v3}, Lcom/android/common/m/a;->agT([BIILandroid/net/Uri;)Lcom/android/common/m/a;

    move-result-object v0

    return-object v0
.end method
