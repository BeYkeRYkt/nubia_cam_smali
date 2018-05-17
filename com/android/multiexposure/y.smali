.class final Lcom/android/multiexposure/y;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/common/ui/M;


# instance fields
.field final synthetic arA:Lcom/android/multiexposure/o;


# direct methods
.method constructor <init>(Lcom/android/multiexposure/o;)V
    .registers 2

    .prologue
    .line 191
    iput-object p1, p0, Lcom/android/multiexposure/y;->arA:Lcom/android/multiexposure/o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public AJ(I)V
    .registers 5

    .prologue
    .line 193
    const-string/jumbo v0, "MultiExposureFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "wq onItemClick : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    iget-object v0, p0, Lcom/android/multiexposure/y;->arA:Lcom/android/multiexposure/o;

    invoke-static {v0, p1}, Lcom/android/multiexposure/o;->aDw(Lcom/android/multiexposure/o;I)V

    .line 192
    return-void
.end method
