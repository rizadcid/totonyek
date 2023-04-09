await PlayerSchema.findOneAndUpdate(
      { discordid: interaction.user.id },
      { $inc: { jumlah: -parseStringFindRdpSchema.harga } }
)
