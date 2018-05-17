.class final Lcom/android/pretty/PrettyMemberConfig$1;
.super Ljava/util/ArrayList;
.source "SourceFile"


# instance fields
.field final synthetic this$0:Lcom/android/pretty/l;


# direct methods
.method constructor <init>(Lcom/android/pretty/l;)V
    .registers 3

    .prologue
    .line 50
    iput-object p1, p0, Lcom/android/pretty/PrettyMemberConfig$1;->this$0:Lcom/android/pretty/l;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 52
    const v0, 0x7f080009

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/pretty/PrettyMemberConfig$1;->add(Ljava/lang/Object;)Z

    .line 50
    return-void
.end method
