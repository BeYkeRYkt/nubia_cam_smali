.class public Lcom/android/common/ui/TimePickerView$SaveState;
.super Landroid/view/View$BaseSavedState;
.source "SourceFile"


# instance fields
.field private final rS:I

.field private final rT:I

.field private final rU:I


# direct methods
.method private constructor <init>(Landroid/os/Parcelable;III)V
    .registers 5

    .prologue
    .line 120
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    .line 121
    iput p2, p0, Lcom/android/common/ui/TimePickerView$SaveState;->rS:I

    .line 122
    iput p3, p0, Lcom/android/common/ui/TimePickerView$SaveState;->rT:I

    .line 123
    iput p4, p0, Lcom/android/common/ui/TimePickerView$SaveState;->rU:I

    .line 119
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcelable;IIILcom/android/common/ui/TimePickerView$SaveState;)V
    .registers 6

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/common/ui/TimePickerView$SaveState;-><init>(Landroid/os/Parcelable;III)V

    return-void
.end method


# virtual methods
.method public wR()I
    .registers 2

    .prologue
    .line 127
    iget v0, p0, Lcom/android/common/ui/TimePickerView$SaveState;->rS:I

    return v0
.end method

.method public wS()I
    .registers 2

    .prologue
    .line 131
    iget v0, p0, Lcom/android/common/ui/TimePickerView$SaveState;->rT:I

    return v0
.end method

.method public wT()I
    .registers 2

    .prologue
    .line 135
    iget v0, p0, Lcom/android/common/ui/TimePickerView$SaveState;->rU:I

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    .prologue
    .line 139
    invoke-super {p0, p1, p2}, Landroid/view/View$BaseSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 140
    iget v0, p0, Lcom/android/common/ui/TimePickerView$SaveState;->rS:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 141
    iget v0, p0, Lcom/android/common/ui/TimePickerView$SaveState;->rT:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 142
    iget v0, p0, Lcom/android/common/ui/TimePickerView$SaveState;->rU:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 138
    return-void
.end method
