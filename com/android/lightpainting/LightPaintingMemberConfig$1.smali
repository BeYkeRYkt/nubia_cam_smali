.class final Lcom/android/lightpainting/LightPaintingMemberConfig$1;
.super Ljava/util/ArrayList;
.source "SourceFile"


# instance fields
.field final synthetic this$0:Lcom/android/lightpainting/a;


# direct methods
.method constructor <init>(Lcom/android/lightpainting/a;)V
    .registers 3

    .prologue
    .line 58
    iput-object p1, p0, Lcom/android/lightpainting/LightPaintingMemberConfig$1;->this$0:Lcom/android/lightpainting/a;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 60
    const v0, 0x7f080006

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/lightpainting/LightPaintingMemberConfig$1;->add(Ljava/lang/Object;)Z

    .line 58
    return-void
.end method
