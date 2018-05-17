.class final Lcom/android/front/FrontMemberConfig$1;
.super Ljava/util/ArrayList;
.source "SourceFile"


# instance fields
.field final synthetic this$0:Lcom/android/front/c;


# direct methods
.method constructor <init>(Lcom/android/front/c;)V
    .registers 3

    .prologue
    .line 34
    iput-object p1, p0, Lcom/android/front/FrontMemberConfig$1;->this$0:Lcom/android/front/c;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 36
    invoke-static {}, Lcom/android/common/custom/D;->aeM()Lcom/android/common/custom/D;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/custom/D;->aeN()Lcom/android/common/custom/x;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/common/custom/x;->adK()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 37
    const v0, 0x7f080005

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/front/FrontMemberConfig$1;->add(Ljava/lang/Object;)Z

    .line 34
    :goto_1d
    return-void

    .line 39
    :cond_1e
    const v0, 0x7f080004

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/front/FrontMemberConfig$1;->add(Ljava/lang/Object;)Z

    goto :goto_1d
.end method
