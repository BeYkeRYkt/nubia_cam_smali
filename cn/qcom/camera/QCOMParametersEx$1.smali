.class final Lcn/qcom/camera/QCOMParametersEx$1;
.super Ljava/util/ArrayList;
.source "SourceFile"


# instance fields
.field final synthetic this$0:Lcn/qcom/camera/c;


# direct methods
.method constructor <init>(Lcn/qcom/camera/c;)V
    .registers 3

    .prologue
    .line 323
    iput-object p1, p0, Lcn/qcom/camera/QCOMParametersEx$1;->this$0:Lcn/qcom/camera/c;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 324
    const-string/jumbo v0, "normal"

    invoke-virtual {p0, v0}, Lcn/qcom/camera/QCOMParametersEx$1;->add(Ljava/lang/Object;)Z

    .line 325
    const-string/jumbo v0, "continuousshot"

    invoke-virtual {p0, v0}, Lcn/qcom/camera/QCOMParametersEx$1;->add(Ljava/lang/Object;)Z

    .line 323
    return-void
.end method
