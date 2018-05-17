.class Lcn/nubia/bigAperture/h;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public bnN:Landroid/os/Messenger;

.field public bnO:Lcn/nubia/bigAperture/BigApertureTask;

.field final synthetic bnP:Lcn/nubia/bigAperture/g;


# direct methods
.method public constructor <init>(Lcn/nubia/bigAperture/g;Lcn/nubia/bigAperture/BigApertureTask;Landroid/os/Messenger;)V
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 905
    iput-object p1, p0, Lcn/nubia/bigAperture/h;->bnP:Lcn/nubia/bigAperture/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 902
    iput-object v0, p0, Lcn/nubia/bigAperture/h;->bnO:Lcn/nubia/bigAperture/BigApertureTask;

    .line 903
    iput-object v0, p0, Lcn/nubia/bigAperture/h;->bnN:Landroid/os/Messenger;

    .line 906
    new-instance v0, Lcn/nubia/bigAperture/BigApertureTask;

    invoke-direct {v0, p2}, Lcn/nubia/bigAperture/BigApertureTask;-><init>(Lcn/nubia/bigAperture/BigApertureTask;)V

    iput-object v0, p0, Lcn/nubia/bigAperture/h;->bnO:Lcn/nubia/bigAperture/BigApertureTask;

    .line 907
    iput-object p3, p0, Lcn/nubia/bigAperture/h;->bnN:Landroid/os/Messenger;

    .line 905
    return-void
.end method
