.class public Lcom/android/common/h/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/common/ui/Y;


# instance fields
.field private YB:Lcom/android/common/ActivityBase;


# direct methods
.method public constructor <init>(Lcom/android/common/ActivityBase;)V
    .registers 3

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/common/h/o;->YB:Lcom/android/common/ActivityBase;

    .line 10
    iput-object p1, p0, Lcom/android/common/h/o;->YB:Lcom/android/common/ActivityBase;

    .line 9
    return-void
.end method


# virtual methods
.method public Dl()V
    .registers 2

    .prologue
    .line 16
    iget-object v0, p0, Lcom/android/common/h/o;->YB:Lcom/android/common/ActivityBase;

    invoke-virtual {v0}, Lcom/android/common/ActivityBase;->asi()V

    .line 14
    return-void
.end method
