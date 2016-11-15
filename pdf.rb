class Pdf

    def dump_fields
        @carrier = self
        path = @carrier.contract_template.staged_path
        dump = `pdftk #{path} dump_data_fields`
        flatary = dump.split(/\n/).flatten.to_a
        field_ary = flatary.find_all { |f| f =~ /FieldType:/ || f =~ /FieldName:/}
        split = field_ary.flatten.collect {|s| s.scan(/\w+/)}.flatten
        split.delete("FieldType")
        split.delete("FieldName")
        @carrier.field_names = split.each_slice(2).to_a
    end
end

