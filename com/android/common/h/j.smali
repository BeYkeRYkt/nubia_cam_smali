.class public Lcom/android/common/h/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/common/ui/Y;


# instance fields
.field private Ym:Lcom/android/common/appService/W;


# direct methods
.method public constructor <init>(Lcom/android/common/appService/W;)V
    .registers 3

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/common/h/j;->Ym:Lcom/android/common/appService/W;

    .line 11
    iput-object p1, p0, Lcom/android/common/h/j;->Ym:Lcom/android/common/appService/W;

    .line 10
    return-void
.end method


# virtual methods
.method public Dl()V
    .registers 3

    .prologue
    .line 16
    iget-object v0, p0, Lcom/android/common/h/j;->Ym:Lcom/android/common/appService/W;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/common/appService/W;->pU(I)V

    .line 15
    return-void
.end method
