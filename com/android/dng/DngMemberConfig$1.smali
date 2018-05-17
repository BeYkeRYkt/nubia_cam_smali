.class final Lcom/android/dng/DngMemberConfig$1;
.super Ljava/util/ArrayList;
.source "SourceFile"


# instance fields
.field final synthetic this$0:Lcom/android/dng/m;


# direct methods
.method constructor <init>(Lcom/android/dng/m;)V
    .registers 3

    .prologue
    .line 51
    iput-object p1, p0, Lcom/android/dng/DngMemberConfig$1;->this$0:Lcom/android/dng/m;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 53
    const v0, 0x7f080001

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/dng/DngMemberConfig$1;->add(Ljava/lang/Object;)Z

    .line 51
    return-void
.end method
