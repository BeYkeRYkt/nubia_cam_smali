.class final Lcom/android/common/ui/aS;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic Ea:Lcom/android/common/ui/CameraAboutView;


# direct methods
.method constructor <init>(Lcom/android/common/ui/CameraAboutView;)V
    .registers 2

    .prologue
    .line 51
    iput-object p1, p0, Lcom/android/common/ui/aS;->Ea:Lcom/android/common/ui/CameraAboutView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/common/ui/aS;->Ea:Lcom/android/common/ui/CameraAboutView;

    invoke-static {v0}, Lcom/android/common/ui/CameraAboutView;->Af(Lcom/android/common/ui/CameraAboutView;)V

    .line 54
    return-void
.end method
