.class public Lcom/android/common/ui/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private oq:Landroid/app/Activity;

.field private or:I


# direct methods
.method public constructor <init>(Landroid/app/Activity;I)V
    .registers 3

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/android/common/ui/c;->oq:Landroid/app/Activity;

    .line 24
    iput p2, p0, Lcom/android/common/ui/c;->or:I

    .line 22
    return-void
.end method
